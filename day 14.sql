-- day 14 challange 
--Show all staff members and their schedule information (including those with no schedule entries).
  SELECT
  s.staff_id,
  s.staff_name,
  s.role,
  s.service AS staff_service, -- only if staff table has this column
  svc.week,
  svc.month,
  svc.service,
  svc.available_beds,
  svc.patients_request,
  svc.patients_admitted,
  svc.patients_refused,
  svc.patient_satisfaction,
  svc.staff_morale,
  svc.event
FROM
  staff s
LEFT JOIN
  service svc ON s.service = svc.service  -- corrected table name
ORDER BY
  s.staff_id, svc.week;
  --list all services from services_weekly and their corresponding staff (show services even if no staff assigned).

  SELECT
  svc.week,
  svc.month,
  svc.service,
  svc.available_beds,
  svc.patients_request,
  svc.patients_admitted,
  svc.patients_refused,
  svc.patient_satisfaction,
  svc.staff_morale,
  svc.event,
  s.staff_id,
  s.staff_name,
  s.role
FROM
  service svc
LEFT JOIN
  staff s ON svc.service = s.service  -- only works if staff table has a 'service' column
ORDER BY
  svc.service, svc.week;

  --Display all patients and their service's weekly statistics (if available).

  SELECT
  -- Columns from your 'patients' table
  p.patient_id,
  p.name,
  p.age,
  p.arrival_date,
  p.departure_date,
  p.satisfaction, -- This is the patient's individual satisfaction score
  p.service, -- KEPT THIS COLUMN for the join. See Note 3.

  -- Columns from the 'service' table
  s.week,
  s.month,
  s.available_beds,
  s.patients_request,
  s.patients_admitted,
  s.patients_refused,
  s.patient_satisfaction, -- This is the service-level satisfaction data
  s.staff_morale,
  s.event
FROM
  patients p
LEFT JOIN

  service s ON p.service = s.service;

  --challange question 

  --Question: Create a staff utilisation report showing all staff members
  --(staff_id, staff_name, role, service) and the count of weeks they were present (from staff_schedule).
  --Include staff members even if they have no schedule records. Order by weeks present descending.


SELECT
  s.staff_id,
  s.staff_name,
  s.role,
  s.service,
  COUNT(svc.week) AS weeks_present
  
FROM
  staff s
LEFT JOIN
  service svc ON s.service = svc.service
GROUP BY
  s.staff_id,
  s.staff_name,
  s.role,
  s.service
ORDER BY
  weeks_present DESC;

