DROP TABLE IF EXISTS finance_trends;

CREATE TABLE finance_trends (
	id_number INT,
	symbol VARCHAR(20),
	region VARCHAR (20)
	startInterval DATE, 
	jobTimestamp TIMESTAMP
);

SELECT *
FROM finance_trends
	
	

