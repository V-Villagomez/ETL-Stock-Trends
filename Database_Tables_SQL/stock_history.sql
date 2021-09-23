DROP TABLE IF EXISTS stock_history;

CREATE TABLE stock_history (
	date_db DATE,
	open DEC,
	high DEC,
	low DEC,
	close DEC,
	adjclose DEC,
	volume INT,
	ticker VARCHAR(20),
	"jobTimestamp" TIMESTAMP
);


SELECT *
FROM stock_history