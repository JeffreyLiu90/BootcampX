const { Pool } = require("pg");

const pool = new Pool({
  user: "vagrant",
  password: "123",
  host: "localhost",
  database: "bootcampx"
});

pool
  .query(
    `SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
  JOIN assistance_requests ON teachers.id = teacher_id
  JOIN students ON student_id = students.id
  JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name LIKE '%${process.argv[2] || "JUL02"}%' 
ORDER BY teachers.name;`
  )

  .then(res => {
    res.rows.forEach(teachers => {
      console.log(`${teachers.cohort}: ${teachers.teacher}`);
    });
  });
