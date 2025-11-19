-- challange day 15

--Join patients, staff, and staff_schedule to show patient service and staff availability.

SELECT 
    p.patient_id,
    p.name,
    p.service AS patient_service,
    
    s.staff_id,
    s.staff_name,
    s.role,
    
    sa.Week AS staff_available_on
FROM patients p
LEFT JOIN staff s 
       ON p.service = s.service
LEFT JOIN staff_attendence sa
       ON s.staff_id = sa.staff_id
ORDER BY p.patient_id, s.staff_id, sa.Week;

--Combine services_weekly with staff and staff_schedule for comprehensive service analysis.

SELECT 
    svc.service,

    s.staff_id,
    s.staff_name,
    s.role,

    sa.week,

    -- Count of total attendance for each staff
    COUNT(sa.week) 
        OVER (PARTITION BY s.staff_id) AS staff_total_attendance,

    -- Total attendance for whole service
    COUNT(sa.week) 
        OVER (PARTITION BY svc.service) AS service_total_attendance

FROM service svc
LEFT JOIN staff s
       ON svc.service = s.service
LEFT JOIN staff_attendence sa
       ON s.staff_id = sa.staff_id

ORDER BY svc.service, s.staff_id, sa.week;

--Create a multi-table report showing patient admissions with staff information.

SELECT 
    p.patient_id,
    p.name,
    p.age,
    p.service AS patient_service,

    s.staff_id,
    s.staff_name,
    s.role,

    sa.week AS staff_present_on
FROM patients p
LEFT JOIN staff s
       ON p.service = s.service
LEFT JOIN staff_attendence sa
       ON s.staff_id = sa.staff_id
ORDER BY p.patient_id, s.staff_id, sa.week;

--Create a comprehensive service analysis report for week 20 showing: service name,
--total patients admitted that week, total patients refused, average patient satisfaction, 
--count of staff assigned to service, and count of staff present that week.
--Order by patients admitted descending.

SELECT
    sw.service,
    sw.patients_admitted AS total_patients_admitted,
    sw.patients_refused AS total_patients_refused,
    sw.patient_satisfaction,

    -- Total staff assigned to this service (distinct staff)
    COALESCE(st.staff_count, 0) AS total_staff_assigned,

    -- Staff present in week 20
    COALESCE(sa.present_count, 0) AS staff_present_week_20

FROM service sw

-- Staff assigned per service (from staff_attendance table)
LEFT JOIN (
    SELECT service, COUNT(DISTINCT staff_id) AS staff_count
    FROM staff_attendence
    GROUP BY service
) st ON st.service = sw.service

-- Staff present in week 20
LEFT JOIN (
    SELECT service, COUNT(*) AS present_count
    FROM staff_attendence
    WHERE   week = 20 
      AND (present=1
	  or present=0)
    GROUP BY service
) sa ON sa.service = sw.service

WHERE sw.week = 20
ORDER BY sw.patients_admitted DESC;






