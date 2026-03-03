/*
This trigger executes after an update on Stops.
If the stop_status has changed, it evaluates whether
the entire route is completed by calling the stored function
is_route_completed(). If no stops remain with status 'pending',
the corresponding route is marked as completed by setting
completed_at to the current timestamp.
*/

CREATE TRIGGER update_route_when_completed
AFTER UPDATE ON Stops
FOR EACH ROW
BEGIN
    DECLARE done BOOLEAN;
    
    IF OLD.stop_status <> NEW.stop_status THEN

        SET done = is_route_completed(NEW.district_number);

        IF done THEN 
            UPDATE Routes 
            SET completed_at = CURRENT_TIMESTAMP
            WHERE district_Number = NEW.district_Number
                AND completed_at IS NULL;
        END IF;
    END IF;
END;
