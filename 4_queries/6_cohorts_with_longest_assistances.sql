SELECT cohorts.name as cohort, AVG(assistance_requests.completed_at - assistance_requests.started_at) as average_assistance_time
FROM cohorts
JOIN students
ON cohorts.id = cohort_id
JOIN assistance_requests
ON student_id = students.id
GROUP BY cohorts.id
ORDER BY average_assistance_time DESC
LIMIT 1;
