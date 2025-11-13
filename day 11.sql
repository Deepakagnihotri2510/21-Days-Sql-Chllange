--challange day 10

--question one 

--List all unique services in the patients table.

SELECT DISTINCT service
FROM patients;

--Find all unique staff roles in the hospital.

SELECT DISTINCT role
FROM staff;

--Get distinct months from the services_weekly table.

SELECT DISTINCT MONTH AS month_number
FROM service;

--Find all unique combinations of service and event type from the services_weekly table where events are not null or
--none, along with the count of occurrences for each combination. Order by count descending.Question:
--Find all unique combinations of service and event type from the services_weekly table where events 
--are not null or none, along with the count of occurrences for each combination. Order by count descending.


SELECT 
    service,
    event,
    COUNT(*) AS event_count
FROM 
    service
WHERE 
    event IS NOT NULL 
    AND event <> 'None'
GROUP BY 
    service,
    event
ORDER BY 
    event_count DESC;
