# ETL-Stock-Trends

<img src="https://newsroom.unsw.edu.au/sites/default/files/styles/full_width__2x/public/thumbnails/image/shutterstock_750493204_1.jpg?itok=2e58K6MB">

## Sweet Stocks
Ricky Lee | Henry Tirado | Vanessa Villagomez

## Introduction
Curious about stock trends? We, the "Sweet Stocks," will be **Extracting** data from a reputable source and will **Transform** the data as best possible to **Load** structured data that will show specific stock trends. 

As a way to guide our efforts, we've asked the following questions:
* What are the stocks of most interest per specified regions?
* Are trending stocks the most volatile stocks in the specified regions? Compare the 20 trending stocks vs. SYP (symbol tracks S&P 500 - tracks top 500 companies in the U.S.)
* Among the 20 trending stocks, what is the average gain or loss "pre-covid" vs. "during covid"? ("Pre-covid Period" - March, 2019 to March, 2020 vs. "During Covid Period " - March,2020 to March,2021)

## Sources and Platforms

* Open Source Library: Yahoo_Fin
* Jupyter Notebook
* Pandas/Python
* Requests
* PostgreSQL

## Extract
We used 2 APIs from www.yahoofinanceapi.com and one open source library (osl).

1. https://yfapi.net/v1/finance/trending/{region}:  Provided the top 1-20 stock ticker symbols that were trending for each of 10 regions:  US AU CA FR DE HK IT ES GB IN.

2. https://yfapi.net/v6/finance/quote: Provided 1-10 stock ticker symbols to get current quote detail data for the particular symbol.  Over 70 attributes provided.

3. https://algotrading101.com/learn/yahoo-finance-api-guide/: provided an open source library that could be installed into anaconda for yahoo_fin module.  A simple import directive in Python.  Provided weekly/daily/monthly history of any stock symbol.

## Transform
Date and timestamp fields were provided in either YYYYMMDD string format or in numeric format (start of epoch).  To properly import them into the database we used pandas dataframe tools to transform the columns.

We have an effort to reduce the quote detail table from 75+ columns to a subset of those columns into another table or view.

## Load
Our database diagram is included in our /diagrams folder.  The URL for the free diagram is https://app.quickdatabasediagrams.com/#/d/mh84ZS

## Challenges
Our main challenges revolved around the APIs we chose to use.  We had to learn how they were accessed, how they worked, and what their limitations were.  For the quotes API, we could only specify 10 ticker symbols at a time; for the history API we could only specify 1 ticker symbol at a time.  For both, we had to run Python 'for' loops to cycle through the varying list of ticker symbols that were trending.

For the open source library, some ticker symbols were not returning any data and killing the 'for' loop.  'try/except' error handling had to be added to prevent the loop from ending prematurely.

Once the data was decoded into JSON, we had to figure out how to reach the data we sought which was sometimes multiple levels of dictionaries and lists deep.

Our PostgreSQL loading kept requiring us to update our table create SQL statements to compensate for mixed case column names and numeric columns that were not large enough.

## What's Next
* Further transform the extracted data in order to analyze the data and answer the imposed questions. 
* Create visualizations to further analyze the data. 
* Review raw data extracted to identify if there are other data points worth analyzing. 
