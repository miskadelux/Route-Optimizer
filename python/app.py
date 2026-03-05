# huvudprogrammet som ska innehålla själva UI
from flask import Flask, jsonify, request
from db import get_connection
from math import radians, sin, cos, sqrt, atan2


app = Flask(__name__)
app.json.ensure_ascii = False

def haversine(lat1, lon1, lat2, lon2):
    R = 6371
    lat1, lon1, lat2, lon2 = map(radians, [lat1, lon1, lat2, lon2])
    dlat = lat2 - lat1
    dlon = lon2 - lon1
    a = sin(dlat/2)**2 + cos(lat1) * cos(lat2) * sin(dlon/2)**2
    return R * 2 * atan2(sqrt(a), sqrt(1-a))

def nearest_neighbor(stops):
    if not stops:
        return [], 0
    
    unvisited = stops.copy()
    route = [unvisited.pop(0)]

    while unvisited:
        current = route[-1]
        nearest = min(
            unvisited,
            key=lambda s: haversine(current["lat"], current["lon"], s["lat"], s["lon"])
        )
        route.append(nearest)
        unvisited.remove(nearest)
    total_distance = sum(
        haversine(route[i]["lat"], route[i]["lon"], route[i+1]["lat"], route[i+1]["lon"])
        for i in range(len(route) - 1)
    )

    return route, round(total_distance, 2)
# to get all the routes


@app.route("/routes", methods=["GET"])
def get_routes():
    connection = get_connection()
    cursor = connection.cursor(dictionary=True)
    try:
        cursor.execute("SELECT * FROM Routes ORDER BY created_at DESC")
        routes = cursor.fetchall()
    except Exception as e:
        return jsonify({"error": str(e)})
    finally:
        cursor.close()
        connection.close()
    return jsonify(routes)

# to get all stops and mailboxes with its status in a certain route


@app.route("/routes/<int:district_number>", methods=["GET"])
def get_route_details(district_number):
    connection = get_connection()
    cursor = connection.cursor(dictionary=True)
    try:
        query = """
            SELECT s.ID AS stop_id,
                m.addresses AS address,
                m.mailbox_status
            FROM Routes r
                JOIN Stops s on r.district_Number = s.district_Number
                JOIN Mailboxes m on s.ID = m.stop_id
            WHERE r.district_Number = %s
            ORDER BY s.ID,
                m.ID;
            """ 
        cursor.execute(query, (district_number,))
        data = cursor.fetchall()

    except Exception as e:
        return jsonify({"error": str(e)})

    finally:
        cursor.close()
        connection.close()
    return jsonify(data)


# insert new routes into the database

@app.route("/new_routes", methods=["POST"])
def add_new_route():
    data = request.get_json()
    district_number = data.get("district_number")
    name = data.get("name")

    if district_number is None:
        return jsonify({"message": "district number is required"})

    if name is None:
        return jsonify({"message": "name is required"})

    try:
        connection = get_connection()
        cursor = connection.cursor()

        query = "INSERT INTO Routes (district_number, name) VALUES (%s, %s)"
        cursor.execute(query, (district_number, name))
        connection.commit()

        return jsonify({"message": "new route was added"}), 201

    except Exception as e:
        return jsonify({"error": str(e)}), 500
    finally:
        connection.close()
        cursor.close()

# Update and add status to a mailbox


@app.route("/routes/<int:district_number>/stops", methods=["GET"])
def get_stops_with_gps(district_number):
    """
    Return all stops for a route with GPS coordinates and mailbox info.
    Designed for the Android map view — each stop includes lat/lon
    so the app can plot markers and navigate between them.
    """
    try:
        connection = get_connection()
        cursor = connection.cursor(dictionary=True)

        # First verify the route exists
        cursor.execute(
            "SELECT district_Number FROM Routes WHERE district_Number = %s",
            (district_number,)
        )
        if not cursor.fetchone():
            return jsonify({"error": f"Route {district_number} not found"}), 404

        # Fetch stops with GPS coords and their associated mailboxes
        query = """
            SELECT
                s.ID          AS stop_id,
                s.lat,
                s.lon,
                s.stop_status,
                m.ID          AS mailbox_id,
                m.addresses   AS address,
                m.mailbox_status AS mailbox_status
            FROM Stops s
            LEFT JOIN Mailboxes m ON s.ID = m.stop_id
            WHERE s.district_Number = %s
            ORDER BY s.ID, m.ID
        """
        cursor.execute(query, (district_number,))
        rows = cursor.fetchall()
                # Group mailboxes under their parent stop
        stops = {}
        for row in rows:
            sid = row["stop_id"]
            if sid not in stops:
                stops[sid] = {
                    "stop_id":    sid,
                    "lat":        float(row["lat"]),
                    "lon":        float(row["lon"]),
                    "stop_status": row["stop_status"],
                    "mailboxes":  []
                }
            # A stop can exist with no mailboxes (LEFT JOIN returns NULL)
            if row["mailbox_id"] is not None:
                stops[sid]["mailboxes"].append({
                    "mailbox_id": row["mailbox_id"],
                    "address":    row["address"],
                    "status":     row["mailbox_status"]
                })

        return jsonify(list(stops.values()))

    except Exception as e:
        return jsonify({"error": str(e)}), 500
    finally:
        cursor.close()
        connection.close()


# add a new stop with cordinates to the route
@app.route("/stops", methods=["POST"])
def add_a_new_stop():
    data = request.get_json()

    lat = data.get("lat")
    lon = data.get("lon")
    district = data.get("district_number")

    if lat is None:
        return jsonify({"error": "lat field is required"}), 400
    if lon is None:
        return jsonify({"error": "lon field is required"}), 400
    if district is None:
        return jsonify({"error": "district is required"}), 400

    try:
        connection = get_connection()
        cursor = connection.cursor()

        query = """
                INSERT INTO Stops (lat, lon, district_number) 
                VALUES (%s, %s, %s)
            """
        cursor.execute(query, (lat, lon, district))
        connection.commit()

        return jsonify({"message": "New Stop was inserted"}), 201

    except Exception as e:
        return jsonify({"error": str(e)}), 500

    finally:
        cursor.close()
        connection.close()

@app.route("/stops/<int:stops_id>/completed", methods=["PUT"])
def completed_stop(stops_id):
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(
            """
            UPDATE Stops
            SET stop_status = 'completed', completed_at = CURRENT_TIMESTAMP
            WHERE ID = %s
            """, (stops_id,)
        )
        connection.commit()
        if cursor.rowcount == 0:
            return jsonify({"error": "stop does not exist"}), 404
        return jsonify({"message": "stop was successfully completed"})
    
    except Exception as e:
        return jsonify({"error": str(e)}), 500
    finally:
        cursor.close()
        connection.close()





# get status of the route

@app.route("/mailboxes/<int:mailbox_id>", methods=["PUT"])
def update_mailbox_status(mailbox_id):
    new_status = request.json.get("mailbox_status")

    if not new_status:
        return jsonify({"error": "mailbox_status is required"}), 400
    try:
        connection = get_connection()
        cursor = connection.cursor()
    
        query = """
            UPDATE Mailboxes
            SET Mailbox_status = %s
            WHERE ID = %s
        """
        cursor.execute(query, (new_status, mailbox_id))
        connection.commit()
        
        return jsonify({"message": "mailbox is updated"})


    except Exception as e:
        return jsonify({"error": str(e)})
    finally:
        cursor.close()
        connection.close() 

@app.route("/routes/<int:district_number>/statistics", methods=["GET"])
def get_the_statistics_of_the_route(district_number):
    
    try:
        connection = get_connection()
        cursor = connection.cursor(dictionary=True)

        query = """
            SELECT r.district_number,
            COUNT(m.ID) AS Total_mailboxes,
            SUM(m.mailbox_status = 'ja tack') AS ja_tack_count,
            SUM(m.mailbox_status = 'nej tack') AS nej_tack_count,
            SUM(m.mailbox_status = 'full') AS full_count,
            SUM(m.mailbox_status = 'brevlåda saknas') AS missing_box_count,
            SUM(m.mailbox_status = 'saknar reklam') AS ads_missing_count
            FROM Routes r
            JOIN Stops s ON r.district_number = s.district_number
            JOIN Mailboxes m ON s.ID = m.stop_id
            WHERE r.district_number = %s
            GROUP BY r.district_number;
    """
        cursor.execute(query, (district_number,))
        result = cursor.fetchone()

        if not result:
            return jsonify({"error": "route does not exist"}), 404
        return jsonify(result)


    except Exception as e:
        return jsonify({"error": "route not found"})    
    finally:
        cursor.close()
        connection.close()    

# the dropdown funtion for the status of the mailboxes
@app.route("/status-options", methods=["GET"])
def dropdown_for_status():

    try:
        connection = get_connection()
        cursor = connection.cursor()

        query = """SELECT COLUMN_TYPE 
                    FROM information_schema.COLUMNS
                    WHERE TABLE_NAME = 'Mailboxes'
                        AND COLUMN_NAME = 'mailbox_status'
                    """
        cursor.execute(query)
        result = cursor.fetchone()
        if result:
            raw_options = result[0]
            clean_options = raw_options.replace(
                "enum(", ""). replace(")", "").replace("'", "").split(",")
            return jsonify(clean_options)
        
        return jsonify([])

    except Exception as e:
        return jsonify({'error': str(e)}), 500
    finally:
        cursor.close()
        connection.close()


# optimizer

@app.route("/routes/<int:district_number>/optimized-stops", methods=["GET"])
def route_optimizer(district_number):
    try:
        connection = get_connection()
        cursor = connection.cursor(dictionary=True)

        cursor.execute(
            """
            SELECT district_number
            FROM Routes
            WHERE district_number = %s
            """, (district_number,))

        if not cursor.fetchone():
            return jsonify({"error": f" Route {district_number} does not exits"}), 404
        
        query = """
            SELECT
            s.ID AS stop_id,
            s.lat,
            s.lon,
            s.stop_status,
            m.ID AS mailbox_id,
            m.addresses AS address,
            m.mailbox_status
            FROM Stops s
            LEFT JOIN Mailboxes m ON s.ID = m.stop_id
            WHERE s.district_number = %s
                AND s.stop_status = 'pending'
            ORDER BY s.ID, m.ID
            """
        cursor.execute(query, (district_number,))
        rows = cursor.fetchall()

        stops = {}
        for row in rows:
            sid = row["stop_id"]
            if sid not in stops:
                stops[sid] = {
                    "stop_id":    sid,
                    "lat":        float(row["lat"]),
                    "lon":        float(row["lon"]),
                    "stop_status": row["stop_status"],
                    "mailboxes":  []
                }
            # A stop can exist with no mailboxes (LEFT JOIN returns NULL)
            if row["mailbox_id"] is not None:
                stops[sid]["mailboxes"].append({
                    "mailbox_id": row["mailbox_id"],
                    "address":    row["address"],
                    "status":     row["mailbox_status"]
                })

        stop_list = (list(stops.values()))

        if not stop_list:
            return jsonify({"message" : " There are no pending stops on this route"})
        
        optimized, total_distance = nearest_neighbor(stop_list)

        return jsonify({
            "total_stops" : len(optimized),
            "total_distance_in_km" : total_distance,
            "optimized_stops" : optimized
        })
    except Exception as e:
        return jsonify({"error": str(e)}), 500
    finally:
        cursor.close()
        connection.close()



if __name__ == "__main__":
    app.run(debug=True)
