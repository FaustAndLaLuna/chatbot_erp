CREATE TABLE IF NOT EXISTS clients( 
	client_id int PRIMARY KEY AUTO_INCREMENT,
	name varchar(255) NOT NULL,
	location varchar(255) NOT NULL,
	sentiment int DEFAULT 0,
	notes varchar(12000)
	);