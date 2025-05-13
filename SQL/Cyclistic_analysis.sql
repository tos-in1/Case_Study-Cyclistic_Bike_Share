## CYCLISTIC BIKESHARE ANALYSIS

## SECTION 1
-- View dataset

SELECT*
FROM
  account-creation-trial.Divvy_Tripdata.cyclistic_clean;

## SECTION 2 (COUNTS / FREQUENCY)
-- Total Number of rides 

SELECT
  COUNT(*) AS total_number
FROM
  account-creation-trial.Divvy_Tripdata.cyclistic_clean;

-- Total number of ride by membership

SELECT
  membership,
  COUNT(*) AS total_number
FROM
  account-creation-trial.Divvy_Tripdata.cyclistic_clean
GROUP BY membership
ORDER BY total_number;

-- Total number of rides by months

SELECT
  ride_month,
  COUNT(*) AS total_number
FROM
  account-creation-trial.Divvy_Tripdata.cyclistic_clean
GROUP BY ride_month
ORDER BY PARSE_TIMESTAMP('%B, %Y', ride_month);

-- Seasonal trend of Casual members

SELECT
  CASE
    WHEN ride_month IN ('March, 2025', 'April, 2024', 'May, 2024') THEN 'Spring'
    WHEN ride_month IN ('June, 2024','July, 2024', 'August, 2024') THEN 'Summer'
    WHEN ride_month IN ('September, 2024','October, 2024', 'November, 2024') THEN 'Fall'
    WHEN ride_month IN ('December, 2024','January, 2025', 'February, 2025') THEN 'Winter'
    ELSE 'Unknown'
    END  AS Season,
  COUNT(*) AS total_number
FROM
  account-creation-trial.Divvy_Tripdata.cyclistic_clean
WHERE membership = 'casual'
GROUP BY
  Season
ORDER BY total_number DESC;

-- Seasonal trend of Annual members

SELECT
  CASE
    WHEN ride_month IN ('March, 2025', 'April, 2024', 'May, 2024') THEN 'Spring'
    WHEN ride_month IN ('June, 2024','July, 2024', 'August, 2024') THEN 'Summer'
    WHEN ride_month IN ('September, 2024','October, 2024', 'November, 2024') THEN 'Fall'
    WHEN ride_month IN ('December, 2024','January, 2025', 'February, 2025') THEN 'Winter'
    ELSE 'Unknown'
    END  AS Season,
  COUNT(*) AS total_number
FROM
  account-creation-trial.Divvy_Tripdata.cyclistic_clean
WHERE membership = 'annual'
GROUP BY
  Season
ORDER BY total_number DESC;

-- Monthly trend of members

SELECT
  ride_month,
  membership,
  COUNT(*) AS total_number
FROM
  account-creation-trial.Divvy_Tripdata.cyclistic_clean
GROUP BY 
  ride_month,
  membership
ORDER BY
  PARSE_TIMESTAMP('%B, %Y', ride_month);

-- Number of rides by day of the week

SELECT
  start_day,
  COUNT(*) AS total_number
FROM
  account-creation-trial.Divvy_Tripdata.cyclistic_clean
GROUP BY 
  start_day;

-- Number of rides by day of week and membership

SELECT
  start_day,
  membership,
  COUNT(*) AS total_number
FROM
  account-creation-trial.Divvy_Tripdata.cyclistic_clean
GROUP BY 
  start_day,
  membership;

-- Number of rides by hour of day and membership

SELECT
  membership,
  EXTRACT(HOUR FROM started_at) AS hour_of_day,
  COUNT(*) AS total_number
FROM 
  account-creation-trial.Divvy_Tripdata.cyclistic_clean
GROUP BY
  hour_of_day,
  membership
ORDER BY total_number DESC;

-- Top 10 peak hours and day for casual members

SELECT
  membership,
  start_day,
  EXTRACT(HOUR FROM started_at) AS hour_of_day,
  COUNT(*) AS total_number
FROM 
  account-creation-trial.Divvy_Tripdata.cyclistic_clean
WHERE membership = 'casual'
GROUP BY
  start_day,
  hour_of_day,
  membership
ORDER BY total_number DESC
LIMIT 10;

-- Top 10 peak hours and day for annual members

SELECT
  membership,
  start_day,
  EXTRACT(HOUR FROM started_at) AS hour_of_day,
  COUNT(*) AS total_number
FROM 
  account-creation-trial.Divvy_Tripdata.cyclistic_clean
WHERE membership = 'annual'
GROUP BY
  start_day,
  hour_of_day,
  membership
ORDER BY total_number DESC
LIMIT 10;


-- SECTION 3 (BIKE TYPE PREFERENCE)

-- Types of bikes available and frequency
SELECT
  rideable_type,
  COUNT(*) AS Frequency
FROM 
  account-creation-trial.Divvy_Tripdata.cyclistic_clean
GROUP BY 
  rideable_type
ORDER BY Frequency DESC;

-- Top bike used and frequency by membership type

SELECT
  membership,
  rideable_type,
  COUNT(*) AS Frequency
FROM 
  account-creation-trial.Divvy_Tripdata.cyclistic_clean
GROUP BY 
  membership,
  rideable_type
ORDER BY Frequency DESC;

-- SECTION 4 (Ride DURATION IN MINUTES)

-- MIN, MAX AND AVERAGE ride duration by members

SELECT 
  membership,
  MIN(ride_time) AS Min_ride_duration,
  MAX(ride_time) AS Max_ride_duration,
  ROUND(AVG(ride_time), 2) AS Avg_ride_duration
FROM
  account-creation-trial.Divvy_Tripdata.cyclistic_clean
GROUP BY
  membership;

-- Average ride duration by weeek days & members

SELECT
  membership,
  start_day,
  ROUND(AVG(ride_time), 2) AS Avg_ride_duration
FROM
  account-creation-trial.Divvy_Tripdata.cyclistic_clean
GROUP BY
  membership,
  start_day
ORDER BY
  Avg_ride_duration DESC;

-- Average ride duration by Hour of day

-- Casual members

SELECT
  EXTRACT(HOUR FROM started_at) AS Hour_of_day,
  ROUND(AVG(ride_time), 2) AS Avg_ride_duration
FROM
  account-creation-trial.Divvy_Tripdata.cyclistic_clean
WHERE
  membership = 'casual'
GROUP BY 
  Hour_of_day
ORDER BY 
  Avg_ride_duration DESC
LIMIT 10;

-- Annual members

SELECT
  EXTRACT(HOUR FROM started_at) AS Hour_of_day,
  ROUND(AVG(ride_time), 2) AS Avg_ride_duration
FROM
  account-creation-trial.Divvy_Tripdata.cyclistic_clean
WHERE
  membership = 'annual'
GROUP BY 
  Hour_of_day
ORDER BY 
  Avg_ride_duration DESC
LIMIT 10;

-- SECTION 5 (TOP START AND END NAME LOCATION)

-- top 10 start name for casual members

SELECT
  start_station_name,
  COUNT(*) AS frequency
FROM
  account-creation-trial.Divvy_Tripdata.cyclistic_clean
WHERE
  membership = 'casual'
  AND start_station_name != 'Unknown'
GROUP BY 
  start_station_name
ORDER BY 
  frequency DESC
LIMIT 10;

-- top 10 start name for annual members

SELECT
  start_station_name,
  COUNT(*) AS frequency
FROM
  account-creation-trial.Divvy_Tripdata.cyclistic_clean
WHERE
  membership = 'annual'
  AND start_station_name != 'Unknown'
GROUP BY 
  start_station_name
ORDER BY 
  frequency DESC
LIMIT 10;

-- top 10 route  for casual members

SELECT
  start_station_name,
  end_station_name,
  COUNT(*) AS frequency
FROM
  account-creation-trial.Divvy_Tripdata.cyclistic_clean
WHERE
  membership = 'casual'
  AND start_station_name != 'Unknown'
  AND end_station_name != 'Unknown'
GROUP BY 
  start_station_name,
  end_station_name
ORDER BY 
  frequency DESC
LIMIT 10;

-- top 10 route  for annual members

SELECT
  start_station_name,
  end_station_name,
  COUNT(*) AS frequency
FROM
  account-creation-trial.Divvy_Tripdata.cyclistic_clean
WHERE
  membership = 'annual'
  AND start_station_name != 'Unknown'
  AND end_station_name != 'Unknown'
GROUP BY 
  start_station_name,
  end_station_name
ORDER BY 
  frequency DESC
LIMIT 10;

-- top 10 route per day of week for casual members 

SELECT
  start_day,
  start_station_name,
  end_station_name,
  COUNT(*) AS frequency
FROM
  account-creation-trial.Divvy_Tripdata.cyclistic_clean
WHERE
  membership = 'casual'
  AND start_station_name != 'Unknown'
  AND end_station_name != 'Unknown'
GROUP BY
  start_day,
  start_station_name,
  end_station_name
ORDER BY 
  frequency DESC
LIMIT 10;

-- top 10 route per day of week for annual members 

SELECT
  start_day,
  start_station_name,
  end_station_name,
  COUNT(*) AS frequency
FROM
  account-creation-trial.Divvy_Tripdata.cyclistic_clean
WHERE
  membership = 'annual'
  AND start_station_name != 'Unknown'
  AND end_station_name != 'Unknown'
GROUP BY
  start_day,
  start_station_name,
  end_station_name
ORDER BY 
  frequency DESC
LIMIT 10;
