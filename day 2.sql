create table service (
week int,
month int,
service varchar(50),
available_beds	int,
patients_request int,
patients_admitted int,
patients_refused int,
patient_satisfaction int,
staff_morale int,
event varchar(90)
);

-- day 2 challange 
--Question One 
-- find all the patients older than 60

select * from patients where age > 60;

--Question two 
-- Retrieve all staff members who work in the 'Emergency' service.

select * from service  where service = 'emergency';

-- question three
--List all weeks where more than 100 patients requested admission in any service.

SELECT week,patients_request FROM service WHERE patients_request > 100;

--Challange question day two 
--Find all patients admitted to 'Surgery' service with a satisfaction score below 70, showing their patient_id, name, age, and satisfaction score.

select patient_id,name,age,satisfaction score from patients
where 
service = 'surgery' and  satisfaction < 70 ;


