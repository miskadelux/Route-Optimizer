-- CREATE DATABASE route_optimizer;


CREATE TABLE Routes (
    district_Number INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    completed_at DATETIME NULL
);

CREATE TABLE Stops (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    lat DECIMAL(9, 6) NOT NULL,
    lon DECIMAL(9, 6) NOT NULL,
    district_Number INT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    stop_status ENUM('pending', 'completed') DEFAULT 'pending',
    completed_at DATETIME NULL,
    CONSTRAINT unique_coordinates UNIQUE (lat, lon),
    CONSTRAINT fk_stops_routes 
        FOREIGN KEY (district_Number) 
        REFERENCES Routes(district_Number) 
        ON DELETE CASCADE
);


CREATE TABLE Mailboxes (
    ID int PRIMARY KEY AUTO_INCREMENT,
    stop_id int NOT NULL,
    mailbox_status ENUM(
        'ja tack',
        'nej tack',
        'låda saknas',
        'full',
        'saknar reklam'
    ) NOT NULL DEFAULT 'ja tack',
    addresses VARCHAR(255) NOT NULL,
    CONSTRAINT fk_mailboxes_stops FOREIGN KEY (stop_id) REFERENCES Stops(id) ON DELETE CASCADE,
    CONSTRAINT unique_mailbox_address UNIQUE (addresses)
);

CREATE TABLE mailbox_status_log (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    mailbox_id INT not NULL,
    old_status Varchar(255),
    new_status Varchar(255),
    changed_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (mailbox_id) REFERENCES Mailboxes(ID)
);
