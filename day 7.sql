create table staff_attendence(

week int,
staff_id varchar(50),
staff_name varchar(50),
role varchar(60),
service	varchar(60),
present int
);
--challange day seven  
--Question one 

--Find services that have admitted more than 500 patients in total.

SELECT service
FROM service
GROUP BY service
HAVING SUM(patients_admitted) > 500;

--Show services where average patient satisfaction is below 75.

SELECT 
    service, 
    AVG(patient_satisfaction) AS avg_satisfaction
FROM service
GROUP BY service
HAVING AVG(patient_satisfaction) < 75;

--List weeks where total staff presence across all services was less than 50.

SELECT 
week,
SUM(present) AS total_presence
FROM staff_attendence
GROUP BY week
HAVING SUM(present) < 50;


--challange question
--Identify services that refused more than 100 patients in total
--and had an average patient satisfaction below 80. Show service name,
--total refused, and average satisfaction.

SELECT 
service,
SUM(patients_refused) AS total_refused,
AVG(patient_satisfaction) AS avg_satisfaction
FROM service
GROUP BY service
HAVING 
SUM(patients_refused) > 100 
AND AVG(patient_satisfaction) < 80;

