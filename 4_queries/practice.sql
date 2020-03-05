CREATE TABLE users
(
  id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  birth_year SMALLINT,
  member_since TIMESTAMP
);

ALTER TABLE users
ADD COLUMN name VARCHAR
(255),
ADD COLUMN  birth_year SMALLINT,
ADD COLUMN  member_since TIMESTAMP;


DROP TABLE USERS;

CREATE TABLE users
(
  id INTEGER PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  birth_year SMALLINT NOT NULL,
  member_since TIMESTAMP NOT NULL
);


ALTER TABLE users 
ALTER COLUMN member_since
SET
DEFAULT Now
();


CREATE TABLE users
(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  birth_year SMALLINT NOT NULL,
  member_since TIMESTAMP NOT NULL DEFAULT Now()
);

CREATE TABLE pets
(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  owner_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE
);

INSERT INTO users
  (name, birth_year)
VALUES
  ('Jack Jill', 1981);

INSERT INTO pets
  (name, owner_id)
VALUES
  ('Hordor', 4);

UPDATE pets
SET owner_id = 2
Where id = 4;