-- CREATE DATABASE route_optimizer;

/*

CREATE TABLE Routes (
    district_Number INT PRIMARY KEY,
    name Varchar(255) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE Stops (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    lat DECIMAL(9, 6) NOT NULL,
    lon DECIMAL(9, 6) NOT NULL,
    district_Number INT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_stops_routes FOREIGN KEY (district_Number) REFERENCES Routes(district_Number) ON DELETE CASCADE
);
CREATE TABLE Mailboxes (
    ID int PRIMARY KEY AUTO_INCREMENT,
    stop_id int NOT NULL,
    mailbox_status varchar(50) NOT NULL,
    CONSTRAINT fk_mailboxes_stops FOREIGN KEY (stop_id) REFERENCES Stops(id) ON DELETE CASCADE
);
*/

/*INSERT INTO Routes (district_Number, name)
VALUES (720, 'Fridlevstad test mapp')


select * from Routes
*/


/*INSERT INTO Stops (lat, lon, district_Number)
VALUES 
(56.253044, 15.614871, 720),
(56.252549, 15.614183, 720);
*/

-- SELECT * FROM Stops;
/*
INSERT INTO Mailboxes (stop_id, mailbox_status)
VALUES 
(1, 'ja tack'),
(1, 'ja tack'),
(2, 'ja tack'),
(2, 'nej tack');
*/
-- SELECT * FROM Mailboxes;

/*
SELECT r.district_Number,
s.ID AS stop_id,
m.id AS mailbox_id,
m.mailbox_status
FROM Routes r
JOIN Stops s
on r.district_Number = s.district_Number
JOIN Mailboxes m
on s.ID = m.stop_id
WHERE r.district_Number = 720
ORDER BY s.ID, m.ID;

*/


-- Query 1 function

/*
use route_optimizer;

DELIMITER //

CREATE FUNCTION count_status_of_mailboxes(route_id INT, status_values Varchar(50))
RETURNS INT
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE total INT;

    SELECT count(m.ID)
    INTO total
    FROM Stops s
    JOIN Mailboxes m on s.ID = m.stop_id
    where s.district_Number = route_id
    AND m.mailbox_status = status_values;

    RETURN IFNULL(total, 0);
END//

DELIMITER ;

use route_optimizer;

SELECT count_status_of_mailboxes(720, 'ja tack')

*/

-- qUERY 2 Trigger 
/*
use route_optimizer;


DELIMITER //

CREATE TRIGGER validate_mailbox_status_insert
BEFORE INSERT ON Mailboxes
FOR EACH ROW
BEGIN
    IF NEW.mailbox_status NOT IN ('ja tack', 'nej tack', 'full', 'brevlåda saknas', 'saknar reklam') THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Invalid mailbox status it has to be one of this: ja tack, nej tack, full, brevlåda saknas ,saknar reklam';
    END IF;
END //

DELIMITER ; 
*/


-- Query 3 Trigger 2 update
/*
use route_optimizer;


DELIMITER //

CREATE TRIGGER validate_mailbox_status_update
BEFORE UPDATE ON Mailboxes
FOR EACH ROW
BEGIN
    IF NEW.mailbox_status NOT IN ('ja tack', 'nej tack', 'full', 'brevlåda saknas', 'saknar reklam') THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Invalid mailbox status it has to be one of this: ja tack, nej tack, full, brevlåda saknas ,saknar reklam';
    END IF;
END //

DELIMITER ; 

*/

