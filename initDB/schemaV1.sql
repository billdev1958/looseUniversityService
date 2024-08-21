CREATE TABLE IF NOT EXISTS students (
  id serial PRIMARY KEY,
  account_id uuid,
  name varchar,
  lastname1 varchar,
  lastname2 varchar,
  created_at timestamp,
  updated_at timestamp
);

CREATE TABLE IF NOT EXISTS accounts (
  id uuid PRIMARY KEY,
  user_id integer,
  email varchar UNIQUE NOT NULL,
  password varchar NOT NULL,
  created_at timestamp,
  updated_at timestamp,
  password_changed_at timestamp
);

CREATE TABLE IF NOT EXISTS subjects (
  id serial PRIMARY KEY,
  name varchar NOT NULL,
  created_at timestamp,
  updated_at timestamp
);

CREATE TABLE IF NOT EXISTS tasks (
  id serial PRIMARY KEY,
  account_id uuid,
  subject_id integer, 
  name varchar NOT NULL,
  created_at timestamp,
  updated_at timestamp
);

ALTER TABLE students
ADD CONSTRAINT fk_students_account_id
FOREIGN KEY (account_id)
REFERENCES accounts(id);

ALTER TABLE accounts
ADD CONSTRAINT fk_accounts_user_id
FOREIGN KEY (user_id)
REFERENCES students(id);

ALTER TABLE tasks 
ADD CONSTRAINT fk_tasks_account_id
FOREIGN KEY (account_id)
REFERENCES accounts(id);

ALTER TABLE tasks
ADD CONSTRAINT fk_tasks_subject_id
FOREIGN KEY (subject_id)
REFERENCES subjects(id);
