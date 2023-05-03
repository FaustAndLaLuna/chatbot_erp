CREATE TABLE IF NOT EXISTS items (
    item_id INTEGER PRIMARY KEY,
    order_id INTEGER NOT NULL,
    name TEXT NOT NULL,
    notes TEXT,
    cost REAL NOT NULL,
    amount INTEGER NOT NULL,
    is_available BOOLEAN,
    FOREIGN KEY (order_id) REFERENCES orders(order_id) ON DELETE CASCADE
);