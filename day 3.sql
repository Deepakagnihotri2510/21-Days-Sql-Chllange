create table staff (
staff_id varchar(50) primary key, 	
staff_name	varchar (50),
role varchar (50),	
service varchar(50)
);

--Day Three challange
--question one 
-- List all patients sorted by age in descending order.

select * from patients order by age desc ;

--Question two 
--Show all services_weekly data sorted by week number ascending and patients_request descending.

select service from service order by week asc , patients_request desc;

-- Question three 
--Display staff members sorted alphabetically by their names.

select * from staff order by  staff_name asc;

--challange question day three 

--Retrieve the top 5 weeks with the highest patient refusals across all services,
--showing week, service, patients_refused, and patients_request. Sort by patients_refused in descending order.

select service,week,patients_refused,patients_request from service order by patients_refused desc
limit 5 ;
