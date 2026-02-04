erDiagram
ROUTES ||--o{ STOPS : has

    ROUTES  {
        district_number INT PK
        name VARCHAR(255)
        created_at TIMESTAMP
    }

    STOPS {
        id INT PK
        district_number INT FK
        lat DECIMAL
        lon DECIMAL
        mailbox_count INT
        created_at TIMESTAMP
    }
