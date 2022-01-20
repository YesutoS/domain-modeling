-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS activities;
DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS industries;
DROP TABLE IF EXISTS sales_team;

-- CREATE TABLES

CREATE TABLE contacts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone_number TEXT
);

CREATE TABLE activities (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  type TEXT,
  date INTEGER,
  time INTEGER,
  contact_id INTEGER,
  sales_person_id INTEGER
);

CREATE TABLE companies (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  industry TEXT
);

CREATE TABLE employees (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  company_id TEXT,
  contact_id TEXT
);

CREATE TABLE industries (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  performance_indicator INTEGER
);

CREATE TABLE industry_membership (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  industry_id TEXT,
  company_id INTEGER
);

CREATE TABLE sales_team (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT
);


--Add Data

INSERT INTO contacts (
  first_name,
  last_name,
  email,
  phone_number
) VALUES (
  "Jane",
  "Doe",
  "jane_doe@gmail.com",
  '404-555-1234'
);

INSERT INTO activities (
  type,
  date,
  time,
  contact_id,
  sales_person_id
) VALUES (
"call",
01182022,
121500,
1,
1
);

INSERT INTO companies (
  name,
  industry
) VALUES (
"Walmart",
"Retail"
);

INSERT INTO employees (
  company_id,
  contact_id
) VALUES (
 1,
 1
);

INSERT INTO industries (
  name, 
  performance_indicator
) VALUES (
  "Retail",
  500
);

CREATE TABLE industry_membership (
  industry_id,
  company_id
) VALUES (
  1,
  1
);

INSERT INTO sales_team (
  first_name,
  last_name
) VALUES (
"Yesuto",
"Shaw"
);


SELECT * FROM contacts;
SELECT * FROM activities;
SELECT * FROM companies;
SELECT * FROM employees;
SELECT * FROM industries;
SELECT * FROM industry_membership;
SELECT * FROM sales_team;