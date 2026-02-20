-- trigger that checks if an existing mailbox that is updated has valid status
CREATE TRIGGER validate_mailbox_status_update BEFORE
UPDATE ON Mailboxes FOR EACH ROW BEGIN IF NEW.mailbox_status NOT IN (
        'ja tack',
        'nej tack',
        'full',
        'brevlåda saknas',
        'saknar reklam'
    ) THEN SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Invalid mailbox status it has to be one of this: ja tack, nej tack, full, brevlåda saknas ,saknar reklam';
END IF;
END;