--challange day nine 
--question one 
--Categorise patients as 'High', 'Medium', or 'Low' satisfaction based on their scores.

SELECT 
    patient_id,
     name,
      satisfaction,
    CASE
        WHEN satisfaction >= 80 THEN 'High'
        WHEN satisfaction >= 50 THEN 'Medium'
        ELSE 'Low'
    END AS satisfaction_level
FROM patients;

--question two 
--Label staff roles as 'Medical' or 'Support' based on role type.

SELECT 
    staff_id,
    staff_name,
    role,
    CASE
        WHEN role IN ('Doctor', 'Nurse', 'Surgeon', 'Therapist', 'Pharmacist') THEN 'Medical'
        ELSE 'Support'
    END AS staff_category
FROM staff;

--question three 
--Create age groups for patients (0-18, 19-40, 41-65, 65+).

SELECT 
    patient_id,
     name,
    age,
    CASE
        WHEN age BETWEEN 0 AND 18 THEN '0-18 (Minor)'
        WHEN age BETWEEN 19 AND 40 THEN '19-40 (Young Adult)'
        WHEN age BETWEEN 41 AND 65 THEN '41-65 (Middle Age)'
        WHEN age > 65 THEN '65+ (Senior)'
        ELSE 'Unknown'
    END AS age_group
FROM patients;

--Question: Create a service performance report showing service name, total patients admitted, and a performance 
--category based on the following: 'Excellent' if avg satisfaction >= 85,
--'Good' if >= 75, 'Fair' if >= 65, otherwise 'Needs Improvement'. Order by average satisfaction descending.

SELECT 
    service,
    COUNT(patients_admitted) AS total_patients_admitted,
    AVG(patient_satisfaction) AS average_satisfaction,
    CASE
        WHEN AVG(patient_satisfaction) >= 85 THEN 'Excellent'
        WHEN AVG(patient_satisfaction) >= 75 THEN 'Good'
        WHEN AVG(patient_satisfaction) >= 65 THEN 'Fair'
        ELSE 'Needs Improvement'
    END AS performance_category
FROM service
GROUP BY service
ORDER BY average_satisfaction DESC;


