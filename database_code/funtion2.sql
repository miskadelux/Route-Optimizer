/*
Determines whether a route is completed.
A route is considered completed when no stops
within the specified district have stop_status = 'pending'.
Returns TRUE if completed, otherwise FALSE.
*/


CREATE FUNCTION is_route_completed (p_district_number INT)
RETURNS BOOLEAN
DETERMINISTIC
BEGIN
    DECLARE remaining INT;

    SELECT COUNT(*)
    INTO remaining
    FROM Stops
    WHERE district_Number = p_district_number
        AND stop_status = 'pending';

    RETURN remaining = 0;

END;