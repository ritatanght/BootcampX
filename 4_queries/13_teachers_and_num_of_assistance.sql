-- Perform the same query as before, but include the number of assistances as well.

SELECT teachers.name as teacher, cohorts.name, COUNT(assistance_requests.*) as cohort
FROM assistance_requests 
JOIN teachers ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
GROUP BY teacher, cohorts.name
ORDER BY teacher;