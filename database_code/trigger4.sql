/*
This trigger executes after an update on the Mailboxes table.
If the mailbox_status value has changed, the modification
is recorded in the Mailbox_Status_Log table.
The trigger provides an audit trail of all status changes.
*/

CREATE TRIGGER log_mailbox_status_change
AFTER UPDATE ON Mailboxes
FOR EACH ROW
BEGIN
    DECLARE route_id INT;
    DECLARE done BOOLEAN;

    -- logga ändringen
    IF OLD.mailbox_status <> NEW.mailbox_status THEN
        INSERT INTO Mailbox_Status_Log (mailbox_id, old_status, new_status)
        VALUES (OLD.ID, OLD.mailbox_status, NEW.mailbox_status);
    END IF;

END;