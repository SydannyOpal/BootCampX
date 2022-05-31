SELECT id, name 
FROM students 
WHERE cohort_id = 1
ORDER BY name;

SELECT count(id) 
FROM students
WHERE cohort_id = (1,2,3);

SELECT name, id, cohort_id
FROM students
WHERE email IS NULL
OR phone IS NULL;

SELECT name, id, email, cohort_id
FROM students
WHERE email NOT LIKE '%gmail.com'
AND phone IS NULL;

SELECT name, id, cohort_id
FROM students
WHERE end_date IS NULL
ORDER BY cohort_id;

SELECT name, email, phone
FROM students
WHERE github IS NULL
AND end_date IS NOT NULL;

SELECT students.name, cohorts.name, cohorts.start_date as cohort_start_date, students.start_date as student_start_date
FROM students
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.start_date != students.start_date
ORDER BY cohort_start_date;

-- SELECT count(*) 
-- FROM assignment_submissions;

-- SELECT students.name as student_name, email, cohorts.name as cohort_name
-- FROM students JOIN cohorts ON cohorts.id = cohort_id;


-- SELECT students.name as student_name, email, cohorts.name as cohort_name
-- FROM students INNER JOIN cohorts ON cohorts.id = cohort_id;

-- SELECT students.name as student_name, email, cohorts.name as cohort_name
-- FROM students OUTER JOIN cohorts ON cohorts.id = cohort_id;

-- 1. FROM students LEFT OUTER JOIN cohorts ON cohorts.id = cohort_id;
-- 2. FROM students RIGHT OUTER JOIN cohorts ON cohorts.id = cohort_id;
-- 3. FROM students FULL OUTER JOIN cohorts ON cohorts.id = cohort_id;
-- The first query will return all students because students is to the LEFT of the word JOIN.
-- The second query will return all of the cohorts because cohorts is to the RIGHT of the word JOIN.
-- The third query will return all rows from both tables, even when there is no match.
