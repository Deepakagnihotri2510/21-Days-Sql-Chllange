

<h1 align="center">21 DAYS SQL CHALLENGE</h1>

<p align="center">
  <img src="https://img.shields.io/badge/Challenge-21_Day_SQL-blue?style=for-the-badge&logo=sql" alt="21 Day SQL Challenge">
  <img src="https://img.shields.io/badge/Organization-Indian_Data_Club-orange?style=for-the-badge" alt="Indian Data Club">
  <img src="https://img.shields.io/badge/Status-In_Progress-green?style=for-the-badge" alt="Status In Progress">
</p>

## Introduction
Welcome to my 21-Day SQL Challenge by @indian Data Club repository! This challenge is designed to improve my SQL skills through daily practice and learning. Each day, I will tackle different SQL queries, concepts, and problems to strengthen my understanding of database management and querying techniques.

## About the Challenge
- Duration: 21 Days
- Focus: Core SQL concepts including SELECT, JOINs, GROUP BY, subqueries, window functions, and more.
- Goal: To build confidence and proficiency in SQL by solving practical problems.

## LinkedIn Profile
Feel free to connect with me on LinkedIn to follow my progress and learn along:  
[LinkedIn](https://www.linkedin.com/in/deepakagnihotri2510)

## Daily Learning Updates
### 📅 Day 1: Introduction to SQL Basics  
**Topics Covered:**  
- Basic `SELECT` statements  
- Column selection  
- Viewing data structure  
- Using `DISTINCT` for unique results  

---

### 🧩 Practice Questions Solved  

1️⃣ Retrieve all columns from the `patients` table.  

2️⃣ Select only the `patient_id`, `name`, and `age` columns from the `patients` table.  

3️⃣ Display the first 10 records from the `services_weekly` table.  

4️⃣ List all unique hospital services available in the hospital.  

---

### 🏁 Today's Reflection  
Today, I learned the fundamentals of SQL data retrieval using the `SELECT` statement.  
I practiced viewing all data, selecting specific columns, and identifying unique values from a table.  

---

### 📚 Progress Tracker  
✅ **Day 1 Completed** – Basic Data Retrieval  
🔜 **Next Up:** `WHERE` clause and conditional filtering  

---
### 📅 Day 2: Filtering Data with WHERE Clause  
**Topics Covered:**  
- `WHERE` clause for filtering data  
- Comparison operators (`>`, `<`, `=`, `!=`)  
- Basic conditional filtering  

---

### 🧩 Practice Questions Solved  

1️⃣ Find all patients who are older than 60 years.  

2️⃣ Retrieve all staff members who work in the 'Emergency' service.  

3️⃣ List all weeks where more than 100 patients requested admission in any service.  

4️⃣ Find all patients admitted to 'Surgery' service with a satisfaction score below 70, showing their patient_id, name, age, and satisfaction score.  

---

### 🏁 Today's Reflection  
Today, I learned how to apply the `WHERE` clause to filter data based on specific conditions.  
I also explored comparison operators and practiced combining multiple conditions for more precise queries.  

---

### 📚 Progress Tracker  
✅ **Day 2 Completed** – Filtering Data with `WHERE`  
🔜 **Next Up:** `ORDER BY`, sorting results in ascending and descending order  

---

### 📅 Day 3: Sorting Data with ORDER BY  
**Topics Covered:**  
- `ORDER BY` clause for sorting results  
- Sorting in ascending (`ASC`) and descending (`DESC`) order  
- Sorting by multiple columns  

---

### 🧩 Practice Questions Solved  

1️⃣ List all patients sorted by age in descending order.  

2️⃣ Show all `services_weekly` data sorted by week number ascending and `patients_request` descending.  

3️⃣ Display staff members sorted alphabetically by their names.  

4️⃣ Retrieve the top 5 weeks with the highest patient refusals across all services, showing `week`, `service`, `patients_refused`, and `patients_request`. Sort by `patients_refused` in descending order.  

---

### 🏁 Today's Reflection  
Today, I learned how to organize query results using the `ORDER BY` clause.  
I explored sorting data in both ascending and descending order, and practiced sorting by multiple columns to generate more meaningful insights.  

---

### 📚 Progress Tracker  
✅ **Day 3 Completed** – Sorting and Organizing Data  
🔜 **Next Up:** Working with `LIMIT`, `DISTINCT`, and aggregate functions like `COUNT()` and `SUM()`  

--- 

### 📅 Day 4: Data Limiting and Pagination  
**Topics Covered:**  
- Using `LIMIT` to restrict result rows  
- Applying `OFFSET` for data pagination  
- Combining `LIMIT` and `OFFSET` for range-based queries  
- Retrieving top or recent records  

---

### 🧩 Practice Questions Solved  

1️⃣ Display the first 5 patients from the `patients` table.  

2️⃣ Show patients 11–20 using `OFFSET`.  

3️⃣ Get the 10 most recent patient admissions based on `arrival_date`.  

4️⃣ Find the 3rd to 7th highest patient satisfaction scores from the `patients` table, showing `patient_id`, `name`, `service`, and `satisfaction`. Display only these 5 records.  

---

### 🏁 Today's Reflection  
Today, I learned how to limit the number of records returned in SQL queries using the `LIMIT` clause.  
I also explored how `OFFSET` helps in implementing pagination to view specific record ranges — a key concept for handling large datasets efficiently.  

---

### 📚 Progress Tracker  
✅ **Day 4 Completed** – Understanding `LIMIT` and `OFFSET`  
🔜 **Next Up:** Using `GROUP BY` and `HAVING` for data aggregation and filtering grouped results  

---

### 📅 Day 5: Aggregate Functions (COUNT, SUM, AVG, MIN, MAX)  
**Topics Covered:**  
- Using aggregate functions for data analysis  
- `COUNT()` for counting records  
- `SUM()` for total calculations  
- `AVG()` for finding averages  
- `MIN()` and `MAX()` for identifying range values  

---

### 🧩 Practice Questions Solved  

1️⃣ Count the total number of patients in the hospital.  

2️⃣ Calculate the average satisfaction score of all patients.  

3️⃣ Find the minimum and maximum age of patients.  

4️⃣ Calculate the total number of patients admitted, total patients refused, and the average patient satisfaction across all services and weeks. Round the average satisfaction to 2 decimal places.  

---

### 🏁 Today's Reflection  
Today, I learned how to summarize and analyze data using SQL aggregate functions like `COUNT`, `SUM`, `AVG`, `MIN`, and `MAX`.  
These functions helped me extract meaningful insights such as totals, averages, and ranges from large datasets efficiently.  

---

### 📚 Progress Tracker  
✅ **Day 5 Completed** – Understanding SQL Aggregate Functions  
🔜 **Next Up:** Grouping data using `GROUP BY` and filtering with `HAVING`  

---


### 📅 Day 6: Grouping and Aggregating Data  
**Topics Covered:**  
- Using `GROUP BY` to aggregate data by categories  
- Applying aggregate functions with grouping  
- Summarizing data for meaningful insights  
- Sorting grouped results for better analysis  

---

### 🧩 Practice Questions Solved  

1️⃣ Count the number of patients by each service.  

2️⃣ Calculate the average age of patients grouped by service.  

3️⃣ Find the total number of staff members per role.  

4️⃣ For each hospital service, calculate the total number of patients admitted, total patients refused, and the admission rate (percentage of requests that were admitted). Order by admission rate descending.  

---

### 🏁 Today's Reflection  
Today, I learned how to use the `GROUP BY` clause to organize and analyze data by categories.  
I practiced combining aggregate functions like `COUNT`, `SUM`, and `AVG` with `GROUP BY` to generate service-wise and role-based summaries.  
Sorting the grouped results helped in identifying top-performing categories based on key metrics.  

---

### 📚 Progress Tracker  
✅ **Day 6 Completed** – Mastering Data Grouping and Aggregation  
🔜 **Next Up:** Filtering grouped results using `HAVING` and combining tables with `JOIN`  

---

### 📅 Day 7: Filtering Aggregated Results with HAVING Clause  
**Topics Covered:**  
- Understanding the `HAVING` clause for filtering grouped data  
- Difference between `WHERE` and `HAVING`  
- Applying conditions on aggregate functions  
- Combining `GROUP BY` with `HAVING` for advanced data insights  

---

### 🧩 Practice Questions Solved  

1️⃣ Find services that have admitted more than 500 patients in total.  

2️⃣ Show services where average patient satisfaction is below 75.  

3️⃣ List weeks where total staff presence across all services was less than 50.  

4️⃣ Identify services that refused more than 100 patients in total and had an average patient satisfaction below 80. Show service name, total refused, and average satisfaction.  

---

### 🏁 Today's Reflection  
Today, I learned how to filter grouped data using the `HAVING` clause — a powerful extension of `GROUP BY`.  
Unlike `WHERE`, which filters rows before aggregation, `HAVING` allows filtering after applying aggregate functions.  
This helped me understand how to derive meaningful business insights from summarized data.  

---

### 📚 Progress Tracker  
✅ **Day 7 Completed** – Filtering Aggregated Data with `HAVING`  
🔜 **Next Up:** Exploring `JOIN` operations to combine data from multiple tables  

---
  
### 📅 Day 8: String Functions and Text Manipulation  
**Topics Covered:**  
- Using `UPPER()` and `LOWER()` for case conversion  
- Applying `LENGTH()` to measure text length  
- Combining strings with `CONCAT()`  
- Extracting substrings using `SUBSTRING()`  
- Creating derived text-based columns with conditional logic  

---

### 🧩 Practice Questions Solved  

1️⃣ Convert all patient names to uppercase.  

2️⃣ Find the length of each staff member's name.  

3️⃣ Concatenate `staff_id` and `staff_name` with a hyphen separator.  

4️⃣ Create a patient summary that shows `patient_id`, full name in uppercase, service in lowercase, age category (if age ≥ 65 then 'Senior', if age ≥ 18 then 'Adult', else 'Minor'), and name length. Only show patients whose name length is greater than 10 characters.  

---

### 🏁 Today's Reflection  
Today, I learned how to manipulate and format text data using SQL string functions.  
I explored functions like `UPPER`, `LOWER`, `LENGTH`, `CONCAT`, and `SUBSTRING` to clean and transform text columns.  
Combining these with conditional logic helped me generate detailed and readable summaries from raw data.  

---

### 📚 Progress Tracker  
✅ **Day 8 Completed** – Mastering String and Text Functions  
🔜 **Next Up:** Working with date functions (`CURRENT_DATE`, `DATEDIFF`, `EXTRACT`, etc.)  

---

### 📅 Day 9: Working with Date and Time Functions  
**Topics Covered:**  
- Using SQL `DATE` functions for date handling  
- Performing date arithmetic (adding or subtracting dates)  
- Extracting parts of a date using `EXTRACT()`  
- Calculating durations and averages based on dates  

---

### 🧩 Practice Questions Solved  

1️⃣ Extract the year from all patient arrival dates.  

2️⃣ Calculate the length of stay for each patient (`departure_date - arrival_date`).  

3️⃣ Find all patients who arrived in a specific month.  

4️⃣ Calculate the average length of stay (in days) for each service, showing only services where the average stay is more than 7 days. Also show the count of patients and order by average stay descending.  

---

### 🏁 Today's Reflection  
Today, I learned how to manage and analyze date-related data using SQL date functions.  
I explored how to extract date parts, calculate durations like patient stay lengths, and perform date-based filtering.  
Understanding these functions is essential for time-based analytics and performance tracking in real-world datasets.  

---

### 📚 Progress Tracker  
✅ **Day 9 Completed** – Mastering Date and Time Functions  
🔜 **Next Up:** Exploring `JOIN` operations to combine and analyze data across multiple tables  

---

### 📅 Day 10: Conditional Logic with CASE WHEN  
**Topics Covered:**  
- Using `CASE WHEN` for conditional logic in SQL  
- Creating derived and categorized columns  
- Applying multiple conditions in a single query  
- Enhancing data readability with categorized outputs  

---

### 🧩 Practice Questions Solved  

1️⃣ Categorize patients as **'High'**, **'Medium'**, or **'Low'** satisfaction based on their scores.  

2️⃣ Label staff roles as **'Medical'** or **'Support'** based on role type.  

3️⃣ Create age groups for patients (**0–18**, **19–40**, **41–65**, **65+**).  

4️⃣ Create a service performance report showing `service name`, total patients admitted, and a performance category based on the following:  
   - **'Excellent'** if average satisfaction ≥ 85  
   - **'Good'** if average satisfaction ≥ 75  
   - **'Fair'** if average satisfaction ≥ 65  
   - **Otherwise:** 'Needs Improvement'  
   Order the results by average satisfaction descending.  

---

### 🏁 Today's Reflection  
Today, I learned how to use the `CASE WHEN` statement to add logic and decision-making inside SQL queries.  
By creating derived columns and categorizing data dynamically, I was able to make reports more insightful and easier to interpret.  
This concept is especially useful in analytics dashboards and performance-based reporting.  

---

### 📚 Progress Tracker  
✅ **Day 10 Completed** – Conditional Logic and Derived Columns  
🔜 **Next Up:** Mastering `JOIN` operations to combine data from multiple related tables  

---


### 📅 Day 11: Using DISTINCT to Remove Duplicates and Find Unique Values  
**Topics Covered:**  
- Understanding the `DISTINCT` keyword  
- Removing duplicate records from query results  
- Extracting unique values from one or more columns  
- Counting distinct combinations for data insights  

---

### 🧩 Practice Questions Solved  

1️⃣ List all unique services in the `patients` table.  

2️⃣ Find all unique staff roles in the hospital.  

3️⃣ Get distinct months from the `services_weekly` table.  

4️⃣ Find all unique combinations of `service` and `event_type` from the `services_weekly` table where events are not null or none, along with the count of occurrences for each combination. Order by count descending.  

---

### 🏁 Today's Reflection  
Today, I learned how to use the `DISTINCT` keyword to eliminate duplicate records and retrieve unique data entries.  
I also explored how to apply `DISTINCT` on multiple columns and combine it with aggregate functions to analyze unique category counts effectively.  

---

### 📚 Progress Tracker  
✅ **Day 11 Completed** – Extracting Unique and Distinct Data  
🔜 **Next Up:** Learning about SQL `JOIN` operations to combine related tables for deeper analysis  

---

### 📅 Day 12: Handling NULL Values in SQL  
**Topics Covered:**  
- Understanding `NULL` and missing data  
- Using `IS NULL` and `IS NOT NULL`  
- Replacing nulls with default values using `COALESCE()`  
- Analyzing datasets with and without null values  

---

### 🧩 Practice Questions Solved  

1️⃣ Find all weeks in `services_weekly` where no special event occurred.  

2️⃣ Count how many records have null or empty event values.  

3️⃣ List all services that had at least one week with a special event.  

4️⃣ Analyze the event impact by comparing weeks with events vs weeks without events.  
   Show the following:  
   - Event status (`'With Event'` or `'No Event'`)  
   - Count of weeks  
   - Average patient satisfaction  
   - Average staff morale  
   Order the results by average patient satisfaction descending.  

---

### 🏁 Today's Reflection  
Today, I learned how to properly handle missing or incomplete data using SQL null-handling functions.  
Understanding when to use `IS NULL`, `IS NOT NULL`, and `COALESCE()` is crucial for accurate reporting and data quality checks.  
This helped me analyze how the presence or absence of events impacts satisfaction and morale metrics.  

---

### 📚 Progress Tracker  
✅ **Day 12 Completed** – Mastering NULL Handling and Data Cleanup  
🔜 **Next Up:** Joins and relational data analysis (INNER JOIN, LEFT JOIN, etc.)  

---

📅 Day 13: Understanding INNER JOIN & Relational Data

Topics Covered:

Combining data using INNER JOIN

Understanding relationships between tables

Joining patient, staff, and weekly service data

Creating multi-table SQL reports

🧩 Practice Questions Solved

1️⃣ Join patients and staff based on their common service field (show patient and staff working in the same service).

2️⃣ Join services_weekly with staff to display weekly service data along with staff information.

3️⃣ Create a report showing patient details along with the staff assigned to their service.

4️⃣ Generate a comprehensive report showing:

patient_id

patient name

age

service

total number of staff members available in that service
Only include services with more than 5 staff members, and order by:

staff count (descending)

patient name (ascending)

🏁 Today's Reflection

Today, I understood how SQL JOINs help connect multiple tables and create meaningful combined reports.
Learning INNER JOIN helped me map real-world relationships like patients → staff → services.
This made it easier to build detailed and professional data reports using multiple tables efficiently.

📚 Progress Tracker

✅ Day 13 Completed – Mastering INNER JOIN & Relational Table Analysis
🔜 Next Up: More advanced joins and multi-table queries

---

📅 Day 14: LEFT JOIN, RIGHT JOIN & Handling Unmatched Records

Topics Covered:

Understanding LEFT JOIN and RIGHT JOIN

Including unmatched rows from one side of a join

Working with incomplete relational data

Generating reports with optional/missing linked records

🧩 Practice Questions Solved

1️⃣ Show all staff members and their schedule information, ensuring staff with no schedule entries are also included.

2️⃣ List all services from services_weekly along with their corresponding staff, showing services even if no staff is assigned.

3️⃣ Display all patients and the weekly statistics of their service (only if those stats exist).

4️⃣ Create a staff utilisation report showing:

staff_id

staff_name

role

service

count of weeks they were present (from staff_schedule)
Include all staff, even those with zero schedule records.
Order the results by weeks present (DESC).

🏁 Today's Reflection

Today’s focus was on LEFT JOIN and RIGHT JOIN, which are essential when dealing with incomplete or optional relationships.
I learned how these joins help ensure all records from one table appear in the output, even when no matching record exists in another table.
This is extremely useful for real-life reporting — like finding staff without schedules or services without assigned staff.

📚 Progress Tracker

✅ Day 14 Completed – Mastering LEFT & RIGHT JOIN for Unmatched Data
🔜 Next Up: FULL JOIN, CROSS JOIN, and advanced relational mapping

---

**#SQL #21DaysChallenge #LearningJourney #DataAnalytics #IndianDataClub**

---


## How to Use This Repository
- Follow each day's folder or file for the respective SQL problems and solutions.
- Review my notes and explanations alongside the SQL queries.
- Feel free to fork or contribute with additional exercises or improvements.

## Tools Used
- SQL Server / MySQL / PostgreSQL (specify your environment)
- SQL Client tools like DBeaver, pgAdmin, or command line tools

## Contact
For questions, feedback, or collaboration, reach out to me via LinkedIn or email: Deepakagnihotri8518@gamil.com 
