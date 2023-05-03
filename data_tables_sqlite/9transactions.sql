CREATE TABLE IF NOT EXISTS transactions (
    transaction_id INTEGER PRIMARY KEY,
    project_id INTEGER NOT NULL,
    worker_id INTEGER NOT NULL,
    account_id INTEGER NOT NULL,
    amount REAL NOT NULL,
    notes TEXT,
    description TEXT,
    is_from_project BOOLEAN,
    payments_left INTEGER DEFAULT 0,
    date_incurred DATE DEFAULT (date('now')),
    date_next_payment DATE,
    number_of_transactions INTEGER NOT NULL,
    is_billable BOOLEAN NOT NULL,
    FOREIGN KEY (project_id) REFERENCES projects(project_id),
    FOREIGN KEY (worker_id) REFERENCES workers(worker_id),
    FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);