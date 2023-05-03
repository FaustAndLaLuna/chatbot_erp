CREATE TABLE IF NOT EXISTS workers (
    worker_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    job_description TEXT NOT NULL,
    rfc VARCHAR(30) NOT NULL,
    curp VARCHAR(30) NOT NULL
);