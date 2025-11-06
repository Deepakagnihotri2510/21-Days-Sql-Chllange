--Day Four challange 

--question one 
--Display the first 5 patients from the patients table.

select * from patients limit 5;

--Question two 
--Show patients 11-20 using OFFSET. 

select * from patients offset 10 limit 10;

--Question three 
--Get the 10 most recent patient admissions based on arrival_date.

select * from patients order by arrival_date desc limit 10;

--challange question day four 
--Find the 3rd to 7th highest patient satisfaction scores from the patients table, showing patient_id, name,
--service, and satisfaction. Display only these 5 records.

select patient_id,name,service,satisfaction from patients order by satisfaction desc offset 2 limit 5;