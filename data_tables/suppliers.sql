CREATE TABLE IF NOT EXISTS suppliers(
	supplier_id int PRIMARY KEY AUTO_INCREMENT,
	name varchar(64) NOT NULL,
	location varchar(255) NOT NULL,
	product_category varchar(255) NOT NULL);