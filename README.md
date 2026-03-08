# Route Optimizer

A full-stack route management system for mail or advertisement delivery drivers. Built as a school project.
---

##  What it does

Instead of using paper and pen to track mailbox statuses, Route Optimizer lets drivers:

- View their assigned route on an interactive map
- See all stops in an optimized driving order (Nearest Neighbor algorithm)
- View all mailboxes at each stop with their current status
- Update mailbox status directly from the map
- Add new stops and mailboxes on the go
- Track statistics: stops remaining, mailboxes remaining, km left

---

## Tech Stack

| Layer | Technology |
|-------|-----------|
| Backend | Python / Flask |
| Database | MySQL |
| Frontend | HTML + Leaflet.js |
| Routing | OSRM (Open Source Routing Machine) |
| GPS | Browser Geolocation API |

---

## Database Schema

4 tables:

- **Routes** — each delivery district/route
- **Stops** — GPS coordinates for each stop on a route
- **Mailboxes** — individual mailboxes at each stop, with address and status
- **mailbox_status_log** — log of all status changes

### Mailbox statuses (ENUM)
- `ja tack` — wants advertisements
- `nej tack` — does not want advertisements
- `full` — mailbox is full
- `brevlåda saknas` — mailbox is missing
- `saknar reklam` — no advertisement slot

---

## API Endpoints

Full CRUD implementation for routes, stops and mailboxes.

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/routes` | List all routes |
| POST | `/new_routes` | Create a new route |
| DELETE | `/routes/<id>` | Delete a route |
| GET | `/routes/<id>/optimized-stops` | Optimized stop order + mailboxes |
| POST | `/stops` | Add a new stop |
| PUT | `/stops/<id>/completed` | Mark stop as completed |
| DELETE | `/stops/<id>` | Delete a stop |
| POST | `/mailboxes` | Add a mailbox to a stop |
| PUT | `/mailboxes/<id>` | Update mailbox status |
| DELETE | `/mailboxes/<id>` | Delete a mailbox |

---

## Map Features

- Interactive Leaflet.js map with OpenStreetMap tiles
- GPS-based start position
- Road-following route line via OSRM
- Click any marker to see all mailboxes at that stop
- Update mailbox status directly from popup
- Add or delete mailboxes from the map
- Delete stops from the map
- Statistics panel (stops left, mailboxes left, km left)
- Route selector dropdown

---

## Database Objects

| Type | Name | Purpose |
|------|------|---------|
| Function | `count_status_of_mailboxes` | Count mailboxes by status on a route |
| Function | `is_route_completed` | Check if all stops are done |
| Trigger | `update_route_when_completed` | Auto-complete route when all stops done |
| Trigger | `log_mailbox_status_change` | Log all status changes |
| Procedure | `add_mailbox_to_stop` | Validated mailbox insertion |
| Procedure | `add_stop_to_route` | Validated stop insertion |

---

##  Installation

**1. Clone the repository**
```bash
git clone https://github.com/miskadelux/Route-Optimizer
cd Route-Optimizer
```

**2. Install dependencies**
```bash
pip install -r requirements.txt
```

**3. Configure database connection**

Edit `db.py` with your MySQL credentials.

**4. Set up the database**

Run the SQL files in this order:

`creating_db.sql`
`inserting_route.sql` (optional)
`inserting_Stops.sql` (optional)


**5. Start the server**
```bash
python app.py
```

The API will be available at `http://127.0.0.1:5000`

**6. Open the map**

Open `map.html` in a browser (use Live Server or similar).

---

## Dependencies

```
flask
flask-cors
mysql-connector-python
```

---

##  Future Plans (MVP)

The next step is a native Android app with:

- Real-time GPS tracking on Google Maps
- Automatic "stop mode" when speed drops below 5 km/h
- One-tap mailbox registration while standing still
- Automatic stop capture on first run — fully optimized on all subsequent runs
- All data synced to the same MySQL backend
- create a login page for admin and users

---


Source code: https://github.com/miskadelux/Route-Optimizer
