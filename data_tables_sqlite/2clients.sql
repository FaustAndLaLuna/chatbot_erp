CREATE TABLE IF NOT EXISTS clients (
    client_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    location TEXT NOT NULL,
    sentiment INTEGER DEFAULT 0,
    notes TEXT
);