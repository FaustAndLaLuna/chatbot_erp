CREATE TABLE IF NOT EXISTS accounts (
    account_id INTEGER PRIMARY KEY,
    balance REAL DEFAULT 0,
    type TEXT NOT NULL CHECK(type IN ('BBVA Bancomer', 'efectivo', 'Santander', 'Fondeadora', 'Banorte', 'Banco Azteca', 'HSBC', 'Scotiabank', 'Inbursa', 'Banamex', 'Banco del Bajío', 'Banregio', 'Sabadell')),
    clabe VARCHAR(64) NOT NULL
);