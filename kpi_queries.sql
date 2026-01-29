-- kpi_queries.sql
-- Purpose: KPI calculations for Power BI dashboard

-- Total Revenue
SELECT SUM(price) AS total_revenue
FROM clean_airbnb;

-- Total Bookings
SELECT COUNT(DISTINCT reviewer_name) AS total_bookings
FROM clean_airbnb;

-- Property Type Distribution
SELECT property_type, COUNT(*) AS total_property
FROM clean_airbnb
GROUP BY property_type;

-- Average Price per Night
SELECT property_type, AVG(price) AS avg_price
FROM clean_airbnb
GROUP BY property_type;