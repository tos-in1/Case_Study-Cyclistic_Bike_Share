# Merge 12 months of Cyclistic bike share data (April 2024 – March 2025)
# into one unified table for analysis and cleaning.

CREATE TABLE account-creation-trial.Divvy_Tripdata.cyclistic_cleanI AS
SELECT * 
FROM 
    account-creation-trial.Divvy_Tripdata.April_2024
UNION ALL
SELECT * 
FROM 
    account-creation-trial.Divvy_Tripdata.May_2024
UNION ALL
SELECT * 
FROM 
    account-creation-trial.Divvy_Tripdata.June_2024
UNION ALL
SELECT * 
FROM 
    account-creation-trial.Divvy_Tripdata.July_2024
UNION ALL
SELECT * 
FROM  
    account-creation-trial.Divvy_Tripdata.August_2024
UNION ALL
SELECT * 
FROM 
    account-creation-trial.Divvy_Tripdata.September_2024
UNION ALL
SELECT * 
FROM
    account-creation-trial.Divvy_Tripdata.October_2024
UNION ALL
SELECT * 
FROM 
    account-creation-trial.Divvy_Tripdata.November_2024
UNION ALL
SELECT * 
FROM 
    account-creation-trial.Divvy_Tripdata.December_2024
UNION ALL
SELECT * 
FROM 
    account-creation-trial.Divvy_Tripdata.January_2025
UNION ALL
SELECT * 
FROM 
    account-creation-trial.Divvy_Tripdata.February_2025
UNION ALL
SELECT * 
FROM 
    account-creation-trial.Divvy_Tripdata.March_2025;

# Remove duplicate rows from the merged 'cyclistic_clean' dataset
# by retaining only the first instance of each 'ride_id'.

CREATE OR REPLACE TABLE  account-creation-trial.Divvy_Tripdata.cyclistic_cleanI AS
SELECT *
FROM (
    SELECT *,
        ROW_NUMBER() OVER (
            PARTITION BY ride_id
            ORDER BY started_at
        ) AS row_n
    FROM account-creation-trial.Divvy_Tripdata.cyclistic_cleanI
)
WHERE row_n = 1;


# Trimming of string data of whitespaces which could filter or grouping issues

CREATE OR REPLACE TABLE account-creation-trial.Divvy_Tripdata.cyclistic_cleanI AS
SELECT
    TRIM(ride_id) AS ride_id,
    TRIM(rideable_type) AS rideable_type,
    TRIM(start_station_name) AS start_station_name,
    TRIM(start_station_id) AS start_station_id,
    TRIM(end_station_name) AS end_station_name,
    TRIM(end_station_id) AS end_station_id,
    TRIM(member_casual) AS membership,
    # include all other columns from the data
    * EXCEPT (ride_id, rideable_type, start_station_name, start_station_id, end_station_name, end_station_id, member_casual)
FROM
    account-creation-trial.Divvy_Tripdata.cyclistic_cleanI;


# Updating blanks and null valuse in the start & end station name
# to "Unknown" in the dataset

CREATE OR REPLACE TABLE account-creation-trial.Divvy_Tripdata.cyclistic_cleanI AS
SELECT
    ride_id,
    rideable_type,
    CASE
        WHEN start_station_name IS NULL OR start_station_name = ''
        THEN 'Unknown'
        ELSE start_station_name
    END AS start_station_name,
    CASE
        WHEN start_station_id IS NULL
        THEN 'Unknown'
        ELSE start_station_id
    END AS start_station_id,
    CASE
        WHEN end_station_name IS NULL OR end_station_name = ''
        THEN 'Unknown'
        ELSE end_station_name
    END AS end_station_name,
    CASE
        WHEN end_station_id IS NULL
        THEN 'Unknown'
        ELSE end_station_id
    END AS end_station_id,
    started_at,
    ended_at,
    start_lat,
    start_lng,
    end_lat,
    end_lng,
    membership
FROM
    account-creation-trial.Divvy_Tripdata.cyclistic_cleanI;

# Adding new columns to the table.... day of week, ride time aand ride month

CREATE OR REPLACE TABLE account-creation-trial.Divvy_Tripdata.cyclistic_cleanI AS
SELECT *,
    FORMAT_TIMESTAMP('%A', started_at) AS day_of_week,
    DATETIME_DIFF(ended_at, started_at, MINUTE) AS ride_time,
    FORMAT_TIMESTAMP('%B, %Y', started_at) AS ride_month
FROM
    account-creation-trial.Divvy_Tripdata.cyclistic_cleanI;

# Removing Outliers from ride time column

CREATE OR REPLACE TABLE account-creation-trial.Divvy_Tripdata.cyclistic_cleanI AS
SELECT
    *
FROM
    account-creation-trial.Divvy_Tripdata.cyclistic_cleanI
WHERE
    ride_time BETWEEN 2 AND 300;



# Updating data format in ride_time from integer to float and rounding to 2 decimal places
# to have the inclusion of seconds

CREATE OR REPLACE TABLE account-creation-trial.Divvy_Tripdata.cyclistic_cleanI AS
SELECT*
    EXCEPT(ride_time),
    ROUND(CAST(DATETIME_DIFF(ended_at, started_at, MINUTE) AS FLOAT64), 2) AS ride_time
FROM
    account-creation-trial.Divvy_Tripdata.cyclistic_cleanI;

# Dropping irrelevant columns such as lat and log

CREATE OR REPLACE TABLE account-creation-trial.Divvy_Tripdata.cyclistic_clean AS
SELECT
    ride_id,
    rideable_type,
    start_station_name,
    end_station_name,
    started_at,
    ended_at,
    day_of_week AS start_day,
    ride_time,
    ride_month,
    membership
FROM
    account-creation-trial.Divvy_Tripdata.cyclistic_cleanI;