SELECT cohorts.name as cohort_name, count(students.*) as student_count
FROM cohorts

  -- why is it this order
  JOIN students ON cohort_id = cohorts.id

-- why is it this
GROUP BY cohort_name
HAVING count(students.name) >= 18
ORDER BY student_count;

