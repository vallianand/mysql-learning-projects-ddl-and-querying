/*MySQL Assignment 1 – DDL Commands & Constraints Employee Database schema: DDL Commands*/
 /*DDL Commands & Constraints*/

 

-- ️ Created Database --
DROP DATABASE IF EXISTS employee;
CREATE DATABASE IF NOT exists employee;
USE employee;

-- created location table --
CREATE TABLE location (
    location_id INT PRIMARY KEY,
    location_name VARCHAR(30)
);

-- created department table -- 
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

-- created employee table-- 
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    gender ENUM('M','F'),
    age INT,
    hire_date DATE,
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2),
    FOREIGN KEY (department_id) REFERENCES departments(department_id),
    FOREIGN KEY (location_id) REFERENCES location(location_id)
);


-- 2. Table Alteration (ALTER):-- 
-- Add a new column named "email" to the Employees table to store employee email addresses -- 

alter table employees
add column email varchar(100);

-- Modify the data type of the "designation" column in the Employees table to support a wider range of values--
alter table employees
modify column designation varchar(200);

-- ⦿ Drop the “age” column from the Employees table.--
ALTER TABLE employees
DROP COLUMN age;

-- Rename the "hire_date" column to "date_of_joining"
ALTER TABLE employees
CHANGE COLUMN hire_date date_of_joining DATE;

-- 3. Table Renaming (RENAME): Rewrite the SQL statements to rename the following tables:-- 

-- Rename "Departments" table to "Departments_Info"

ALTER TABLE departments
RENAME TO departments_info;

-- Rename "Location" table to "Locations"

ALTER TABLE location
RENAME TO locations;

-- 4. Truncate the Employees table (removes all data but keeps the structure)
TRUNCATE TABLE employees;

-- 5. Drop the Employees table
DROP TABLE IF EXISTS employees;

-- Drop the entire "employee" database
DROP DATABASE IF EXISTS employee;

 -- Constraints--
/* Database Recreation:

 1. Drop the 'employee' database if it exists and recreate it using the
provided schema, ensuring that all tables are created with the
appropriate constraints as instructed*/

/* answer 1. Database Recreation with Constraints  */
DROP DATABASE IF EXISTS employee;

CREATE DATABASE employee;
USE employee;


/* 2. Departments Table:
 *Ensure that the "department_id" uniquely identifies each department.
 *Set up constraints on the "department_name" to avoid duplicate and null entries.
 
2. Departments Table with Constraints */
CREATE TABLE departments_info (
    department_id INT PRIMARY KEY,          -- Unique identifier
    department_name VARCHAR(100) NOT NULL UNIQUE   -- Not null & no duplicates
);


/* 
3. Location Table:

Establish a mechanism to automatically generate unique identifiers for each location, ensuring that they are incremented sequentially.
 Implement constraints to prevent the insertion of null and duplicate locations.

3. Locations Table with Constraints    */
CREATE TABLE locations (
    location_id INT AUTO_INCREMENT PRIMARY KEY,  -- Auto-incremented unique ID
    location_name VARCHAR(30) NOT NULL UNIQUE   -- Not null & unique
);


/* 4. Employees Table:

* Guarantee that each employee has a distinct identifier.
* Create a restriction to ensure that the employee's name is always provided.
* Limit the acceptable values for the "gender" field to only 'M' or 'F'.
* Enforce a condition to ensure that the employee's age is 18 or above.
* Automatically assign the current date to the "hire_date" field if not specified.
* Establish links between the "department_id" and "location_id" fields in the "employees" table and their respective tables.

Employees Table with Constraints */

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,                -- Unique employee ID
    employee_name VARCHAR(50) NOT NULL,        -- Employee name required
    gender ENUM('M','F'),                       -- Only 'M' or 'F' allowed
    age INT CHECK (age >= 18),                 -- Must be 18 or older
    date_of_joining DATETIME DEFAULT CURRENT_TIMESTAMP, -- Default to current date
    designation VARCHAR(200),
    email VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2),
    FOREIGN KEY (department_id) REFERENCES departments_info(department_id),
    FOREIGN KEY (location_id) REFERENCES locations(location_id)
);




















