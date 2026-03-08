CREATE TRIGGER update_route_when_completed
AFTER
UPDATE ON Stops FOR EACH ROW BEGIN
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