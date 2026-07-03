CREATE DATABASE IF NOT EXISTS agriculture;
USE agriculture;

-- View all records
SELECT * FROM crop_data;

-- Total number of records
SELECT COUNT(*) AS Total_Records
FROM crop_data;

-- Display unique states
SELECT DISTINCT State_Name
FROM crop_data;

-- Display unique crops
SELECT DISTINCT Crop
FROM crop_data;

-- Total production by state
SELECT State_Name,
SUM(Production) AS Total_Production
FROM crop_data
GROUP BY State_Name
ORDER BY Total_Production DESC;

-- Average production by crop
SELECT Crop,
AVG(Production) AS Average_Production
FROM crop_data
GROUP BY Crop
ORDER BY Average_Production DESC;

-- Highest production
SELECT MAX(Production) AS Highest_Production
FROM crop_data;

-- Lowest production
SELECT MIN(Production) AS Lowest_Production
FROM crop_data;

-- Average cultivated area
SELECT AVG(Area) AS Average_Area
FROM crop_data;

-- Production by season
SELECT Season,
SUM(Production) AS Total_Production
FROM crop_data
GROUP BY Season;

-- Top 10 production records
SELECT *
FROM crop_data
ORDER BY Production DESC
LIMIT 10;

-- Number of crops by state
SELECT State_Name,
COUNT(Crop) AS Crop_Count
FROM crop_data
GROUP BY State_Name;

-- Production after 2015
SELECT *
FROM crop_data
WHERE Crop_Year >= 2015;

-- Records with production greater than 100000
SELECT *
FROM crop_data
WHERE Production > 100000;

-- Average production by state
SELECT State_Name,
AVG(Production) AS Average_Production
FROM crop_data
GROUP BY State_Name;

-- Total cultivated area by crop
SELECT Crop,
SUM(Area) AS Total_Area
FROM crop_data
GROUP BY Crop;

-- Year-wise production
SELECT Crop_Year,
SUM(Production) AS Total_Production
FROM crop_data
GROUP BY Crop_Year
ORDER BY Crop_Year;

-- States having production above average
SELECT State_Name,
SUM(Production) AS Total_Production
FROM crop_data
GROUP BY State_Name
HAVING SUM(Production) >
(
SELECT AVG(Production)
FROM crop_data
);

-- Crops starting with letter 'R'
SELECT *
FROM crop_data
WHERE Crop LIKE 'R%';

-- End of SQL Script