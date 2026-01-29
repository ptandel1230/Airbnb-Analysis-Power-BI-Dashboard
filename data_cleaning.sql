-- data_cleaning.sql
-- Purpose: Clean Airbnb dataset before visualization

SELECT *
FROM airbnb_raw
WHERE price > 0
  AND neighbourhood IS NOT NULL
  AND room_type IS NOT NULL;