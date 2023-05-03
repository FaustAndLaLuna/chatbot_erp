CREATE TABLE IF NOT EXISTS accounts( 
	account_id int PRIMARY KEY AUTO_INCREMENT,
	balance real DEFAULT 0,
	type enum("BBVA Bancomer", "efectivo", "Santander", "Fondeadora", "Banorte", "Banco Azteca", "HSBC", "Scotiabank", "Inbursa", "Banamex", "Banco del Bajío", "Banregio", "Sabadell") NOT NULL,
	clabe varchar(64) NOT NULL
	);