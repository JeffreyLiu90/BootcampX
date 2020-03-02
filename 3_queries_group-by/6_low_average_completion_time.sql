SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration, avg(assignments.duration) as average_estimated_duration
FROM students
  JOIN assignment_submissions ON students.id = student_id
  JOIN assignments ON assignment_id = assignments.id
WHERE students.end_date IS NULL
GROUP BY student
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)

ORDER BY average_assignment_duration;