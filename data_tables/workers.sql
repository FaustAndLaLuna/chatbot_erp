CREATE TABLE IF NOT EXISTS workers( 
	worker_id int PRIMARY KEY AUTO_INCREMENT,
	name varchar(255) NOT NULL,
	job_description varchar(255) NOT NULL,
	rfc varchar(30) NOT NULL,
	curp varchar(30) NOT NULL
	);