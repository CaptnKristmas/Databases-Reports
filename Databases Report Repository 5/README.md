# Homework 5 — Documenting an HR Database

**Author:** Vladimir Paraschiv  
**Course:** CMSC 408 – Database Systems  
**Semester:** Fall 2025  
**Date:** October 17, 2025  
[**Repository**](https://github.com/cmsc-vcu/cmsc408-fa2025-hw5-CaptnKristmas)

---

## 📘 Overview

This project documents a **Human Resources (HR) database** for a large enterprise system.  

The assignment focuses on exploring an existing relational schema, understanding how each table contributes to the organization’s HR functions, and visualizing relationships between entities using **Chen** and **Crow’s Foot** notations.  

The report integrates **SQL-generated metadata**, **sample data**, and **ER diagrams**, offering both a conceptual and physical view of the database.  

The deliverable demonstrates proficiency in connecting to a live database, querying the SQL Database, and displaying formatted tables directly within a **Quarto** HTML report.

---

## 🧩 Tools and Technologies

This project uses:

- **Quarto** — for professional report generation combining text, SQL, and visuals  
- **Graphviz (DOT)** — to produce a Chen-style ER diagram  
- **Mermaid** — to produce a Crow’s Foot diagram with cardinalities  
- **Python (3.11.6)** — for database connection and querying  
- **itables** — for rendering interactive HTML tables  
- **PyMySQL / SQLAlchemy / dotenv** — for MySQL access and environment-variable handling  
- **Poetry** — to manage dependencies and virtual environments  
- **Pyenv** — to create isolated Python environments

---

## 🧠 Database Summary

The HR database consists of **nine tables** (8 base tables + 1 view) that collectively describe a company’s workforce, structure, and geography:

- **regions**, **countries**, **locations**, **departments**, **employees**, **jobs**, **job_history**, **job_grades**, and **emp_details_view**

These tables capture hierarchical and referential relationships such as:
- Region → Country → Location → Department → Employee  
- Jobs and Job Grades defining employee salary ranges and titles  
- Historical data for past positions and department changes  

The diagrams and table listings reveal how foreign-key relationships enforce integrity across this structure.

---

## 🧪 Rendering Instructions

To render the Quarto report into a standalone HTML document, run in Virtual Studio Code terminal: `cd ./reports` and then:
`quarto render report.qmd`

Alternatively, simply open the pre-rendered `report.html` file included in this repository.
