CREATE TABLE IF NOT EXISTS transactions(
	transaction_id int PRIMARY KEY  AUTO_INCREMENT,
	project_id int NOT NULL FOREIGN KEY REFERENCES projects(project_id),
	worker_id int NOT NULL FOREIGN KEY REFERENCES workers(worker_id),
	account_id int NOT NULL FOREIGN KEY REFERENCES accounts(account_id),
	amount real NOT NULL,
	notes varchar(65500),
	description varchar(3000),
	is_from_project boolean,
	payments_left int DEFAULT 0,
	date_incurred date DEFAULT (CURDATE()),
	date_next_payment date,
	number_of_transactions int NOT NULL,
	is_billable boolean NOT NULL
	);