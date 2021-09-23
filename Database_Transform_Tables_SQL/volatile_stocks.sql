DROP TABLE IF EXISTS volatile_stocks;

CREATE TABLE volatile_stocks (
	symbol VARCHAR(20),
	region VARCHAR(20),
	"averageDailyVolume3MOnth" INT,
	"displayName" VARCHAR(50),
	"fiftyDayAverageChangePercent" DEC,
	"quoteType" VARCHAR(20)
);

SELECT *
FROM volatile_stocks