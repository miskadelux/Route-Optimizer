CREATE TABLE Routes (
    district_Number INT PRIMARY KEY,
    name Varchar(255) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE Stops (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    lat DECIMAL(9, 6) NOT NULL,
    lon DECIMAL(9, 6) NOT NULL,
    mailbox_count INT NOT NULL,
    district_Number INT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_stops_routes FOREIGN KEY (district_Number) REFERENCES Routes(district_Number) ON DELETE CASCADE
);