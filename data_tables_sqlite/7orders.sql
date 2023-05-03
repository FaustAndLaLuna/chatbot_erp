CREATE TABLE IF NOT EXISTS orders (
    order_id INTEGER PRIMARY KEY,
    supplier_id INTEGER,
    project_id INTEGER,
    account_id INTEGER,
    date_ordered DATE DEFAULT (date('now')),
    status TEXT NOT NULL DEFAULT 'planeado' CHECK(status IN ('planeado', 'empezado', 'finalizado pero sin cobrar', 'finalizado y cobrado')),
    total_cost REAL NOT NULL,
    number_of_items INTEGER NOT NULL,
    date_arrived DATE,
    is_from_project BOOLEAN DEFAULT 0,
    FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id) ON DELETE CASCADE,
    FOREIGN KEY (project_id) REFERENCES projects(project_id) ON DELETE CASCADE,
    FOREIGN KEY (account_id) REFERENCES accounts(account_id) ON DELETE CASCADE
);