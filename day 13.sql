--challange day 13

--Join patients and staff based on their common service field (show patient and staff who work in same service).

SELECT
    p.patient_id,
    p.name AS patient_name,
    p.service AS patient_service,
    s.staff_id,
    s.staff_name AS staff_name,
    s.role AS staff_role
FROM patients p
JOIN staff s 
    ON LOWER(TRIM(p.service)) = LOWER(TRIM(s.service))
ORDER BY p.name, s.staff_name;
--Join services_weekly with staff to show weekly service data with staff information.

SELECT
    sw.week,
    sw.service AS weekly_service,
    sw.event,
    sw.patient_satisfaction,
    sw.staff_morale,
    s.staff_id,
    s.staff_name AS staff_name,
    s.role AS staff_role
FROM service sw
LEFT JOIN staff s
    ON LOWER(TRIM(sw.service)) = LOWER(TRIM(s.service))
ORDER BY sw.week DESC, sw.service;


--Create a report showing patient information along with staff assigned to their service.
SELECT
    p.patient_id,
    p.name AS patient_name,
    p.age,
    p.service,
    COALESCE(
        string_agg(s.staff_name || ' (' || s.role || ')', ', ' ORDER BY s.staff_name),
        'No staff assigned'
    ) AS staff_assigned
FROM patients p
LEFT JOIN staff s
    ON LOWER(TRIM(p.service)) = LOWER(TRIM(s.service))
GROUP BY
    p.patient_id, p.name, p.age, p.service
ORDER BY p.name;
-- Create a comprehensive report showing patient_id, patient name,
--age, service, and the total number of staff members available in their service. 
--Only include patients from services that have more than 5 staff members. Order by number of staff descending, 
--then by patient name.



WITH staff_counts AS (
    SELECT
        LOWER(TRIM(service)) AS svc,
        COUNT(*) AS total_staff
    FROM staff
    GROUP BY LOWER(TRIM(service))
)

SELECT
    p.patient_id,
    p.name AS patient_name,
    p.age,
    p.service,
    sc.total_staff AS total_staff_in_service
FROM patients p
JOIN staff_counts sc
    ON LOWER(TRIM(p.service)) = sc.svc
WHERE sc.total_staff > 5
ORDER BY sc.total_staff DESC, p.name;

