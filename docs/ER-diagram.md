```mermaid
erDiagram
ROUTES ||--o{ STOPS : has
STOPS ||--o{ MAILBOXES : has
MAILBOXES ||--o{ Mailbox_status_log : logs


    ROUTES  {
        district_number INT PK
        name VARCHAR(255)
        timestamp created_at
    }

    STOPS {
        int id PK
        int district_number FK
        decimal lat
        decimal lon
        string stop_status
        timestamp created_at
        timestamp completed_at 
    }

    MAILBOXES {
        int id PK
        int stop_id FK
        string status 
        string addresses 
    }

    Mailbox_status_log {
        int ID PK
        int mailboxes_id FK
        string old_status
        string new_status
        timestamp changed_at
    }
```
