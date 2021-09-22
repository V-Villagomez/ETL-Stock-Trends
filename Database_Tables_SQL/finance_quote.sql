DROP TABLE IF EXISTS finance_quote;

CREATE TABLE finance_quote (
	ask DEC,
	askSize INT,
	averageAnalystRating VARCHAR(30), 
	averageDailyVolume10Day INT,
	averageDailyVolume3Month INT,
	bid DEC,
	bidSize INT,
	bookValue DEC,
	currency VARCHAR(20),
	displayName VARCHAR(50),
	dividendDate INT,
	earningsTimestamp INT,
	earningsTimestampEnd INT,
	earningsTimestampStart INT,
	epsCurrentYear DEC,
	epsForward DEC,
	epsTrailingTwelveMonths DEC,
	esgPopulated BOOLEAN,
	exchange VARCHAR(20),
    exchangeDataDelayedBy INT,
    exchangeTimezoneName VARCHAR(50),
    exchangeTimezoneShortName VARCHAR(10),
    fiftyDayAverage DEC,
    fiftyDayAverageChange DEC,
    fiftyDayAverageChangePercent DEC,
    fiftyTwoWeekHigh DEC,
    fiftyTwoWeekHighChange DEC,
    fiftyTwoWeekHighChangePercent DEC,
    fiftyTwoWeekLow DEC,
    fiftyTwoWeekLowChange DEC,
    fiftyTwoWeekLowChangePercent DEC,
    fiftyTwoWeekRange VARCHAR(30),
    financialCurrency VARCHAR (20),
    firstTradeDateMilliseconds INT,
    forwardPE DEC,
    fullExchangeName VARCHAR(20),
    gmtOffSetMilliseconds INT,
    language VARCHAR(20),
    longName VARCHAR(50),
    market VARCHAR(50),
    marketCap INT,
    marketState VARCHAR(30),
    messageBoardId VARCHAR(50),
    postMarketChange DEC,
    postMarketChangePercent DEC,
    postMarketPrice DEC,
    postMarketTime INT,
    priceEpsCurrentYear DEC,
    priceHint INT,
    priceToBook DEC,
    quoteSourceName VARCHAR(50),
    quoteType VARCHAR(20),
    region VARCHAR(20),
    regularMarketChange DEC,
    regularMarketChangePercent DEC,
    regularMarketDayHigh DEC,
    regularMarketDayLow DEC,
    regularMarketDayRange VARCHAR(50),
    regularMarketOpen DEC,
    regularMarketPreviousClose DEC,
    regularMarketPrice DEC,
    regularMarketTime INT,
    regularMarketVolume INT,
    sharesOutstanding INT,
    shortName VARCHAR(100),
    sourceInterval INT,
    symbol VARCHAR(10),
    tradeable BOOLEAN,
    trailingAnnualDividendRate DEC,
    trailingAnnualDividendYield DEC,
    trailingPE DEC,
    triggerable BOOLEAN,
    twoHundredDayAverage DEC,
    twoHundredDayAverageChange DEC,
    twoHundredDayAverageChangePercent DEC,
	jobTimestamp TIMESTAMP
);


SELECT *
FROM finance_quote