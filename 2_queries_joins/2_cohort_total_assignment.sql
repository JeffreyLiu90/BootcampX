


SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
  JOIN students ON students.id = student_id
  JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'FEB12';


-- SELECT sum(assignment_submissions.duration) as total_duration
-- FROM assignment_submissions
--   JOIN cohorts ON cohorts.id = assignment_submissions.id
-- WHERE cohorts.name = 'FEB12';