/* **01:** Table name: `student`, columns: `id`, `name`, `grade`
- `id` is the primary key
- `name` is only their first name
- `grade` is an integer
- write the SQL in the file `sql/01-create-table-student.sql`
*/

CREATE TABLE student (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  grade INTEGER
);
