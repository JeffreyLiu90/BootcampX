SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
  JOIN students ON students.id = student_id
WHERE students.name = 'Ibrahim Schimmel';



-- SELECT sum(assignments_seeds.duration) as total_duration
-- FROM assignments_seeds
-- WHERE name  = 'Ibrahim Schimmel';
