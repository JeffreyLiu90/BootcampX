const { Pool } = require("pg");

const pool = new Pool({
  user: "vagrant",
  password: "123",
  host: "localhost",
  database: "bootcampx"
});

const cohortName = process.argv[2];
const values = [`%${cohortName}%`];

const queryString = `SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
  JOIN assistance_requests ON teachers.id = teacher_id
  JOIN students ON student_id = students.id
  JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name LIKE $1 
ORDER BY teachers.name;`;

pool.query(queryString, values).then(res => {
  res.rows.forEach(teachers => {
    console.log(`${teachers.cohort}: ${teachers.teacher}`);
  });
});
