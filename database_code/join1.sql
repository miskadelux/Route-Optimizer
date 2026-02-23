SELECT r.district_Number,
    s.ID AS stop_id,
    m.id AS mailbox_id,
    m.mailbox_status
FROM Routes r
    JOIN Stops s on r.district_Number = s.district_Number
    JOIN Mailboxes m on s.ID = m.stop_id
WHERE r.district_Number = 720
ORDER BY s.ID,
    m.ID;