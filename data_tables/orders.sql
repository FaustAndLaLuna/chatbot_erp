CREATE TABLE IF NOT EXISTS orders(
	order_id int PRIMARY KEY AUTO_INCREMENT,
	supplier_id int,
	project_id int,
	account_id int,
	date_ordered date DEFAULT (CURDATE()),
	status ENUM("planeado","empezado","finalizado pero sin cobrar","finalizado y cobrado") DEFAULT "planeado",
	total_cost real NOT NULL,
	number_of_items int NOT NULL,
	date_arrived date,
	is_from_project boolean DEFAULT FALSE,
	FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (project_id) REFERENCES projects(project_id) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (account_id) REFERENCES accounts(account_id) ON DELETE CASCADE ON UPDATE CASCADE
	);
