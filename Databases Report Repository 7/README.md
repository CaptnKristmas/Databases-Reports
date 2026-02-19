# CMSC408 - Fall 2025 - Homework 7 

**Author:** Vladimir Paraschiv 
**Course:** CMSC 408 – Database Systems 
**Semester:** Fall 2025 
**Date:** November 2025 

---

## 📘 Overview

This project expands upon previous database work by introducing roles and enhancing the many-to-many relationships between entities. In this assignment, the database models a small organizational environment where individuals (people) may hold roles and acquire skills over time.
The database now contains five relational tables:


*people* – individuals in the organization


*skills* – catalog of skills that can be learned


*roles* – organizational or professional roles


*peopleskills* – junction table linking people to skills


*peopleroles* – junction table linking people to roles


These relationships are represented using a Crow’s Foot ER diagram and explored through a series of SQL queries demonstrating `JOIN, LEFT JOIN, GROUP BY, HAVING,` and aggregate functions such as `COUNT` and `GROUP_CONCAT`.
This assignment focuses on understanding how multi-table joins are used to retrieve meaningful insights from structured relational data.

---

## 🧩 Tools and Technologies

This project uses:


**Quarto** — to weave SQL, Python, and text into a single dynamic report


**Mermaid ER diagrams** — for modeling relational structure


**Python (via Jupyter/Quarto)** — for executing SQL queries and displaying results


**SQLAlchemy** / **PyMySQL** / **dotenv** — for database connectivity


**MySQL** — as the backend relational database


**Poetry** — to manage dependencies and environments


**VS Code** — recommended for working with both the report and the code

---

## 🧠 Database Summary

The overall design defines two many-to-many relationships: 

| Relationship     | Junction Table   | Meaning                                                                |
|------------------|-----------------|-------------------------------------------------------------------------|
| People ↔ Skills  | `peopleskills`  | A person may acquire many skills; a skill may belong to many people.    |
| People ↔ Roles   | `peopleroles`   | A person may hold multiple roles; a role may be assigned to many people.|


Foreign keys maintain referential integrity:

- peopleskills.people_id → people.people_id

- peopleskills.skills_id → skills.skills_id

- peopleroles.people_id → people.people_id

- peopleroles.role_id → roles.role_id


The structure allows us to analyze questions like:

- Who has a given skill or role?

- Who has no skills yet?

- Which skills or roles are unused?

- How many skills has each person acquired?

---

## 🗂️ Repository Structure 
```text
cmsc408-fa2025-hw7-template/ 
│ 
├── reports/ 
│   ├── report.qmd           # Main Quarto report 
│   ├── _quarto.yml          # Rendering metadata 
│   ├── my-ddl.sql           # Database creation + inserts 
│   ├── helpers.py           # SQL and connection utilities 
│   ├── .env                 # MySQL credentials (not committed) 
│   ├── report.html          # Rendered output 
│   └── report_files/        # Embedded Quarto assets 
│   └──_pycache__/         # Python cache files 
│ 
├── pyproject.toml           # Poetry environment configuration 
├── poetry.lock              # Package lock file 
└── README.md                # This documentation file 
```
---

## ⚙️ Setup Instructions

1. Start the Poetry virtual environment:
`poetry shell`

2. Install all dependencies:
`poetry install`

3. Create a .env file inside the reports/ directory:
`MYSQL_USERNAME=your_username`
`MYSQL_PASSWORD=your_password`
`MYSQL_HOSTNAME=localhost`
`HW7_DB_NAME=your_database_name`

4. Load and initialize the database:
Run the report — if successful, you should see:
No errors detected while loading: ./my-ddl.sql

---

## 🧪 Rendering Instructions

To produce a standalone HTML report:
`cd reports`
`quarto render report.qmd`

Alternatively, open report.html directly if you do not need to re-render.