CREATE TABLE IF NOT EXISTS projects (
    project_id INTEGER PRIMARY KEY,
    client_id INTEGER,
    date_started DATE NOT NULL,
    is_finished BOOLEAN DEFAULT 0,
    date_finished DATE,
    has_emergency BOOLEAN DEFAULT 0,
    FOREIGN KEY (client_id) REFERENCES clients(client_id) ON DELETE CASCADE
);