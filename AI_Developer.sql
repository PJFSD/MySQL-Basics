CREATE DATABASE AI_Developer;

USE AI_Developer;

SELECT * FROM ai_developer;

-- 1.Get all records where Sleep_Hours is less than 5 hours.
SELECT * FROM ai_developer WHERE Sleep_Hours < 5;

-- 2.Get rows where Stress_Level is greater than 90.
SELECT Stress_Level FROM ai_developer WHERE Stress_Level > 90;

-- 3.Show developers who fixed more bugs than they found.
SELECT Bugs_Found, count(Bugs_Fixed) AS FixedMoreBugs FROM ai_developer; 

-- 4.List records where Coffee_Intake equals 0.
SELECT * FROM ai_developer WHERE Coffee_Intake = 0;

-- 5.Fetch developers whose Task_Success_Rate is between 80 and 100.
SELECT * FROM ai_developer WHERE Task_Success_Rate BETWEEN 80 AND 100;

-- 6.Find the average number of Commits across developers.
SELECT Commits, AVG(Commits) avg_acrossNumber FROM ai_developer GROUP BY Commits;

-- 7.Get the maximum Hours_Coding recorded.
SELECT MAX(Hours_coding) AS max_HoursCoding FROM ai_developer;

-- 8.Calculate the total Lines_of_Code written by all developers.
SELECT COUNT(*) AS Total_lines FROM ai_developer;

-- 9.Find the minimum Stress_Level.
SELECT MIN(Stress_Level) AS min_StressLevel FROM ai_developer;

-- 10.Get average Errors grouped by Cognitive_Load level.
SELECT AVG(Cognitive_Load) AS avg_Errors FROM ai_developer;

-- 11.Count how many rows where AI_Usage_Hours > 5.
SELECT * FROM ai_developer WHERE AI_Usage_Hours > 5;

-- 12.Show top 10 rows sorted by highest Bugs_Found.
SELECT * FROM ai_developer ORDER BY Bugs_Found DESC LIMIT 10;

-- 13.Show 5 developers with lowest Sleep_Hours.
SELECT * FROM ai_developer ORDER BY Sleep_Hours ASC LIMIT 5;

-- 14.Sort developers by Stress_Level descending.
SELECT * FROM ai_developer ORDER BY stress_Level DESC;

-- 15.Show developers sorted by most Task_Duration_Hours.
SELECT * FROM ai_developer ORDER BY Task_Duration_Hours DESC;

-- 16.Group records by Coffee_Intake and count number of developers per intake.
SELECT Coffee_Intake, COUNT(*) AS total_developers FROM ai_developer GROUP BY Coffee_Intake;

-- 17.Group by Stress_Level ranges (e.g. 0–50, 51–80…) and calculate average Sleep_Hours. (ChatGPT)
SELECT
    CASE
        WHEN Stress_Level BETWEEN 0 AND 50 THEN '0–50'
        WHEN Stress_Level BETWEEN 51 AND 80 THEN '51–80'
        WHEN Stress_Level BETWEEN 81 AND 100 THEN '81–100'
        ELSE 'Unknown'
    END AS Stress_Range,
    AVG(Sleep_Hours) AS avg_sleep_hours
FROM ai_developer
GROUP BY Stress_Range
ORDER BY Stress_Range;

-- 18.Group by AI_Usage_Hours and compute average Task_Success_Rate.
SELECT AI_Usage_Hours, AVG(Task_Success_Rate) AS avg_SuccessRate FROM ai_developer GROUP BY AI_Usage_Hours;

-- 19.Count number of developers grouped by Hours_Coding > 8 (using CASE). (ChatGPT)
SELECT
    CASE
        WHEN Hours_Coding > 8 THEN 'More than 8 hours'
        ELSE '8 hours or less'
    END AS Coding_Category,
    COUNT(*) AS total_developers
FROM ai_developer
GROUP BY Coding_Category;

-- 20.Group by Cognitive_Load and show only groups having more than 20 rows.
SELECT 
    Cognitive_Load,
    COUNT(*) AS total_developers
FROM ai_developer
GROUP BY Cognitive_Load
HAVING COUNT(*) > 20;

-- 21.Calculate Bugs_Remaining = Bugs_Found – Bugs_Fixed for every developer.
SELECT Bugs_Found, Bugs_Fixed, (Bugs_Found - Bugs_Fixed) AS Bugs_Remaining FROM ai_developer;


-- 22.Find % error rate = Errors / Lines_of_Code * 100. (ChatGPT)
SELECT
    Errors,
    Lines_of_Code,
    (Errors * 100.0 / Lines_of_Code) AS Error_Rate_Percentage
FROM ai_developer
WHERE Lines_of_Code > 0;


-- 23.Show developers where Bugs_Found / Hours_Coding > 3.
SELECT Bugs_Found, Hours_Coding, (Bugs_Found / Hours_Coding) AS Bugs_Per_Hour
FROM ai_developer
WHERE Hours_Coding > 0
  AND (Bugs_Found / Hours_Coding) > 3;

-- 24.Extract rows where Task_Duration_Hours per commit exceeds 0.5 hours. (ChatGPT)
SELECT
    Task_Duration_Hours,
    Commits,
    (Task_Duration_Hours / Commits) AS Hours_Per_Commit
FROM ai_developer
WHERE Commits > 0
  AND (Task_Duration_Hours / Commits) > 0.5;

-- 25.Compare Stress_Level vs Sleep_Hours to show developers with high stress but low sleep. (ChatGPT)
SELECT
    Stress_Level,
    Sleep_Hours,
    CASE
        WHEN Stress_Level >= 70 AND Sleep_Hours <= 6
        THEN 'High Stress / Low Sleep'
        ELSE 'Normal'
    END AS Health_Status
FROM ai_developer;

