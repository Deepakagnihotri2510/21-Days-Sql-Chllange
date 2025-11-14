--challange day twelve 

--question one 
--Find all weeks in services_weekly where no special event occurred

SELECT *
FROM service
WHERE event IS NULL 
   OR event ILIKE 'none'
   OR event = '';
--question two 
--Count how many records have null or empty event values.

SELECT COUNT(*) AS null_or_empty_event_count
FROM service
WHERE event IS NULL
   OR event = ''
   OR event ILIKE 'none';

--Question three 

--List all services that had at least one week with a special event.

SELECT DISTINCT service
FROM service
WHERE event IS NOT NULL
  AND event <> ''
  AND event ILIKE 'none' = FALSE;
  
-- Analyze the event impact by comparing weeks with events vs weeks without events.
--Show: event status ('With Event' or 'No Event'), count of weeks, average patient satisfaction, 
--and average staff morale. Order by average patient satisfaction descending.

SELECT
    CASE 
        WHEN event IS NOT NULL 
             AND event <> '' 
             AND event ILIKE 'none' = FALSE
        THEN 'With Event'
        ELSE 'No Event'
    END AS event_status,
    
    COUNT(*) AS week_count,
    AVG(patient_satisfaction) AS avg_patient_satisfaction,
    AVG(staff_morale) AS avg_staff_morale

FROM service

GROUP BY 
    CASE 
        WHEN event IS NOT NULL 
             AND event <> '' 
             AND event ILIKE 'none' = FALSE
        THEN 'With Event'
        ELSE 'No Event'
    END

ORDER BY avg_patient_satisfaction DESC;

