**E-Commerce Employee Management & SQL Data Analysis Project**

Simple overview of the purpose of the project:
This repository contains two complete SQL projects—Database Design with DDL & Constraints and Querying & Analysis using SQL.
It covers everything from creating a relational database structure to performing real-time data analysis using SQL queries.

**Description**

This project demonstrates an end-to-end SQL workflow by combining:

**🔹 Part 1 – Database Design & DDL (Assignment 1)**

Includes creation of:

* employee database
* Departments table with constraints
* Location table with auto-increment IDs
* Employees table with foreign keys, gender restrictions, age validation & default hire date
* Table ALTER, RENAME, TRUNCATE & DROP operations
* Complete schema recreation with proper constraints

**🔹 Part 2 – SQL Querying & Data Analysis (Assignment 2)**

* Includes advanced SQL operations:
* DISTINCT, WHERE, LIKE, IS NULL
* ORDER BY, LIMIT
* SUM, AVG, MIN, MAX
* GROUP BY, HAVING
* INNER JOIN, LEFT JOIN, RIGHT JOIN
* Updating missing values

Detailed employee insights based on salary, location, department & designation

Together, these assignments simulate real-life SQL tasks for Data Analysts, Database Developers, and Backend Engineers.

Getting Started
Dependencies

MySQL Workbench / XAMPP / WAMP

MySQL Server (5.7+ recommended)

Any OS (Windows / macOS / Linux)

**Installing**
* Clone or download this repository
* Open MySQL Workbench
* Run the DDL.sql file from Assignment 1
* Insert employee sample data
* Run the Queries.sql file from Assignment 2
* Executing Program

**Example:**

USE employee;
SELECT * FROM employees;

Help

Common issues:

Issue	Solution
Foreign key error	Check parent table exists & data types match
Data type mismatch	Confirm column types before altering
Cannot delete table	Disable foreign key checks before dropping

Command:

SET FOREIGN_KEY_CHECKS = 0;

**Authors**
Valli Anandhan
Data Analyst Aspirant

Version History

v1.0

Added database creation scripts

Added constraints & DDL operations

Added SQL querying solutions

Added documentation & formatting

**License**
This project is licensed under the MIT License.

**Acknowledgments**

MySQL Documentation
W3Schools SQL
Entri Elevate SQL Course
ChatGPT for learning support
