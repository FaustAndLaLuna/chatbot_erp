CREATE TABLE IF NOT EXISTS items(
	item_id int PRIMARY KEY  AUTO_INCREMENT,
	order_id int NOT NULL,
	name varchar(64) NOT NULL,
	notes varchar(3000),
	cost real NOT NULL,
	amount int NOT NULL,
	is_available boolean,
	FOREIGN KEY (order_id) REFERENCES orders(order_id) ON DELETE CASCADE ON UPDATE CASCADE
	);