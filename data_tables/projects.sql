CREATE TABLE IF NOT EXISTS projects(
	project_id int PRIMARY KEY AUTO_INCREMENT,
	client_id int,
	date_started date NOT NULL,
	is_finished boolean DEFAULT FALSE,
	date_finished date,
	has_emergency boolean DEFAULT FALSE,
	FOREIGN KEY (client_id) REFERENCES clients(client_id) ON DELETE CASCADE ON UPDATE CASCADE
	);