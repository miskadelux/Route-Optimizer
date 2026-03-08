CREATE PROCEDURE add_stop_to_route(
    IN p_district_number INT,
    IN p_lat DECIMAL(9, 6),
    IN p_lon DECIMAL(9, 6)
) BEGIN IF NOT EXISTS (
    SELECT 1
    FROM Routes
    WHERE district_number = p_district_number
) THEN SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Route does not exist';
END IF;
INSERT INTO Stops (lat, lon, district_number)
VALUES (p_lat, p_lon, p_district_number);
END;