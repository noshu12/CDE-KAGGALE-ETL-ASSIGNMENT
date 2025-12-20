CREATE DATABASE GamingProject;
USE GamingProject
------------------------------------------

-- VERIFY DATA IN SQL SERVER
------------------------------------------
SELECT TOP 10 * FROM gaming_performance;
SELECT COUNT(*) FROM gaming_performance;

------------------------------------------
--AGGREGATED FUNCTION ANALYSIS
------------------------------------------
--MEAN (AVERAGE) VALUES
--Average Gaming Hours, Sleep, Performance
SELECT
    AVG(daily_gaming_hours) AS avg_daily_gaming_hours,
    AVG(sleep_hours) AS avg_sleep_hours,
    AVG(academic_or_work_score) AS avg_academic_score,
    AVG(productivity_level) AS avg_productivity
FROM gaming_performance;
------------------------------------------
-- MEDIAN VALUES
SELECT
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY daily_gaming_hours) 
        OVER () AS median_daily_gaming_hours,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY academic_or_work_score) 
        OVER () AS median_academic_score
FROM gaming_performance;

------------------------------------------
-- MODE VALUES
--Mode of Game Type
SELECT TOP 1 game_type, COUNT(*) AS frequency
FROM gaming_performance
GROUP BY game_type
ORDER BY frequency DESC;

--Mode of Primary Gaming Time
SELECT TOP 1 primary_gaming_time, COUNT(*) AS frequency
FROM gaming_performance
GROUP BY primary_gaming_time
ORDER BY frequency DESC;

------------------------------------------
--AVERAGE PERFORMANCE BY GAMING TIME
SELECT
    primary_gaming_time,
    AVG(academic_or_work_score) AS avg_score
FROM gaming_performance
GROUP BY primary_gaming_time;

------------------------------------------
-- AVERAGE SCORE BY GAME TYPE
SELECT
    game_type,
    AVG(productivity_level) AS avg_productivity
FROM gaming_performance
GROUP BY game_type
ORDER BY avg_productivity DESC;

------------------------------------------
-- STRESS VS GAMING HOURS
SELECT
    CASE
        WHEN daily_gaming_hours <= 2 THEN 'Low'
        WHEN daily_gaming_hours <= 4 THEN 'Moderate'
        ELSE 'High'
    END AS gaming_level,
    AVG(stress_level) AS avg_stress
FROM gaming_performance
GROUP BY
    CASE
        WHEN daily_gaming_hours <= 2 THEN 'Low'
        WHEN daily_gaming_hours <= 4 THEN 'Moderate'
        ELSE 'High'
    END;


------------------------------------------