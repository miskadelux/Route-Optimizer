CREATE PROCEDURE add_mailbox_to_stop(
    IN p_stop_id INT,
    IN p_address VARCHAR(255),
    IN p_status VARCHAR(50)
) BEGIN IF NOT EXISTS (
    SELECT 1
    FROM Stops
    WHERE ID = p_stop_id
) THEN SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Stop does not exist';
END IF;
INSERT INTO Mailboxes (stop_id, addresses, mailbox_status)
VALUES (p_stop_id, p_address, p_status);
END;