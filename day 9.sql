--challange day nine 

--question one 
--Extract the year from all patient arrival dates.

select extract(year from arrival_date) as patients_arrival_year from patients;
--question two 
--Calculate the length of stay for each patient (departure_date - arrival_date).

SELECT 
    arrival_date,
    departure_date,
    (departure_date - arrival_date) AS duration_days
FROM patients;
--Question three
--Find all patients who arrived in a specific month.

select extract(month from arrival_date)=3 from patients;

select extract(month from arrival_date) from patients;

--challange day nine 
-- Calculate the average length of stay (in days) for each service,
--showing only services where the average stay is more than 7 days. 
--Also show the count of patients and order by average stay descending.
SELECT 
    service,
    COUNT(*) AS total_patients,
    AVG(departure_date - arrival_date) AS avg_stay
FROM patients
GROUP BY service
HAVING AVG(departure_date - arrival_date) > 7
ORDER BY avg_stay DESC;

