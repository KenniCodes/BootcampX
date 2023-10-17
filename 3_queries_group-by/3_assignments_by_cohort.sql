SELECT cohorts.name as cohort, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON student.id = student_count
JOIN cohorts ON cohort.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;