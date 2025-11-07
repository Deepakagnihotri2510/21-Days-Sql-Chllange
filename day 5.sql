--challange day five 

-- question one 

--Count the total number of patients in the hospital.

select count(patients_admitted) as total_patients from service;

--question two 
--Calculate the average satisfaction score of all patients.

select avg(patient_satisfaction) as average_satisfaction from service;

--question three 
--Find the minimum and maximum age of patients.

select min(age) as minimum_age , max(age) as maximum_age from patients;

--challange question day five 
-- Calculate the total number of patients admitted, total patients refused,
--and the average patient satisfaction across all services and weeks. Round the average satisfaction to 2 decimal places.

select count(patients_admitted) as admitted_patients,count(patients_refused) as patients_refused,
round(avg(patient_satisfaction), 2) as average_satisfaction
from service;
