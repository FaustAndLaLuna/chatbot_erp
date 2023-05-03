CREATE TABLE IF NOT EXISTS project_workers(
	project_worker_id int PRIMARY KEY  AUTO_INCREMENT,
	project_id int,
	worker_id int,
	project_worker_type enum("gestionador de proyectos", "jardinero", "diseñador", "transportista") NOT NULL,
	FOREIGN KEY project_id REFERENCES projects(project_id) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY worker_id REFERENCES workers(worker_id) ON DELETE CASCADE ON UPDATE CASCADE
	);