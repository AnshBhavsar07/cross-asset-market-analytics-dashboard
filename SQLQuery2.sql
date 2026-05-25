Create DATABASE FinancialMarketAnalytics;
USE FinancialMarketAnalytics;
USE FinancialMarketAnalytics;
Create table dim_asset (
asset_id INT IDENTITY (1,1) PRIMARY KEY,
ticker VARCHAR(20) NOT NULL,
asset_name VARCHAR(100),
asset_class VARCHAR(50)
);
CREATE TABLE fact_prices (
price_id INT IDENTITY(1,1) PRIMARY KEY,
ticker VARCHAR(20),
price_date DATE,
close_price FLOAT
);
CREATE TABLE fact_returns (
return_id INT IDENTITY(1,1) PRIMARY KEY,
ticker VARCHAR(20),
return_date DATE,
daily_return FLOAT
);
CREATE TABLE fact_risk_metrics (
metric_id INT IDENTITY(1,1) PRIMARY KEY,
ticker VARCHAR(20),
annual_return FLOAT,
annual_volatility FLOAT,
sharpe_ratio FLOAT,
max_drawdown FLOAT
);
CREATE TABLE event_calendar (
event_id INT IDENTITY(1,1) PRIMARY KEY,
event_date DATE,
event_name VARCHAR(100),
event_type VARCHAR(50)
);
use FinancialMarketAnalytics;
select TOP 10 * FROM dim_asset;
select TOP 10 * FROM fact_prices;
select TOP 10 * FROM fact_returns;
Select TOP 10 * FROM fact_risk_metrics;
select TOP 10 * FROM event_calendar;