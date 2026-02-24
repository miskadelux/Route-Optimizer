# huvudprogrammet som ska innehålla själva UI
from flask import Flask, jsonify, request
from db import get_connection

app = Flask(__name__)
app.json.ensure_ascii = False

# to get all the routes


@app.route("/routes", methods=["GET"])
def get_routes():
    connection = get_connection()
    cursor = connection.cursor(dictionary=True)

    cursor.execute("SELECT * FROM Routes")
    routes = cursor.fetchall()

    cursor.close()
    connection.close()
    return jsonify(routes)

# to get all stops and mailboxes with its status in a certain route


@app.route("/routes/<int:district_number>", methods=["GET"])
def get_route_details(district_number):
    connection = get_connection()
    cursor = connection.cursor(dictionary=True)

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

    cursor.close()
    connection.close()

    return jsonify(data)

# Update and add status of a mailbox


@app.route("/mailboxes/<int:mailbox_id>", methods=["PUT"])
def update_mailbox_status(mailbox_id):
    new_status = request.json.get("mailbox_status")

    if not new_status:
        return jsonify({"error": "mailbox_status is required"}), 400

    connection = get_connection()
    cursor = connection.cursor()

    query = """
        UPDATE Mailboxes
        SET Mailbox_status = %s
        WHERE ID = %s
"""

    cursor.execute(query, (new_status, mailbox_id))
    connection.commit()

    cursor.close()
    connection.close()

    return jsonify({"message": "mailbox is updated"})


# add a new stop with cordinates to the route
@app.route("/stops", methods=["POST"])
def add_a_new_stop():
    data = request.get_json()

    lat = data.get("lat")
    lon = data.get("lon")
    district = data.get("district_number")

    if lat is None:
        return ({"error": "lat field is required"}), 400
    if lon is None:
        return ({"error": "lon field is required"}), 400
    if district is None:
        return ({"error": "district is required"}), 400

    connection = None
    cursor = None

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
        if cursor:
            cursor.close()
        if connection:
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
    except Exception as e:
        return jsonify({'error': str(e)}), 500
    finally:
        if cursor:
            cursor.close()
        if connection:
            connection.close()
    return jsonify([])


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
        connection = get_connection
        cursor = connection.cursor()

        query = "INSERT INTO Routes (district_number, name) VALUES (%s, %s)"
        cursor.ececute(query, (district_number, name))
        connection.commit()

        return jsonify({"message": "new route was added"}), 201

    except Exception as e:
        return jsonify({"error": str(e)}), 500
    finally:
        if connection:
            connection.close()
        if cursor:
            cursor.close()

# get status of the route


@app.route("/routes/<district_number>/statistics", methods=["GET"])
def get_the_statistics_of_the_route(district_number):
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

    cursor.close()
    connection.close()

    if not result:
        return jsonify({"error": "route not found"})

    return jsonify(result)


if __name__ == "__main__":
    app.run(debug=True)
