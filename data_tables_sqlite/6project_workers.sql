CREATE TABLE IF NOT EXISTS project_workers (
    project_worker_id INTEGER PRIMARY KEY,
    project_id INTEGER,
    worker_id INTEGER,
    project_worker_type TEXT NOT NULL CHECK(project_worker_type IN ('gestionador de proyectos', 'jardinero', 'diseñador', 'transportista')),
    FOREIGN KEY (project_id) REFERENCES projects(project_id) ON DELETE CASCADE,
    FOREIGN KEY (worker_id) REFERENCES workers(worker_id) ON DELETE CASCADE
);