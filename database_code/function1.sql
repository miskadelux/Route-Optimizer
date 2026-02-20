-- funtion that counts the status of every mailbox
CREATE FUNCTION count_status_of_mailboxes(route_id INT, status_values Varchar(50)) RETURNS INT DETERMINISTIC READS SQL DATA BEGIN
DECLARE total INT;
SELECT count(m.ID) INTO total
FROM Stops s
    JOIN Mailboxes m on s.ID = m.stop_id
where s.district_Number = route_id
    AND m.mailbox_status = status_values;
RETURN IFNULL(total, 0);
END;