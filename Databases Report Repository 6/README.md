# Homework 6 — Creating a Resume Database

**Author:** Vladimir Paraschiv  
**Course:** CMSC 408 – Database Systems  
**Semester:** Fall 2025  
**Date:** October 24, 2025  
[**Repository**](https://github.com/cmsc-vcu/cmsc408-fa2025-hw6-CaptnKristmas)

---

## 📘 Overview

This project documents a **Resume Database** built from scratch using **MySQL**, **Python**, and **Quarto**. The system models individuals, their professional skills, and the skills each person has acquired over time.

The database consists of three key tables:
- **people** – representing individuals or employees  
- **skills** – cataloging skills with descriptions and tags  
- **peopleskills** – a junction table linking people and skills with acquisition dates  

The report demonstrates the design and relationships among these tables using a **Crow’s Foot ER diagram**, while showcasing **SQL queries** that retrieve and analyze the stored data. It integrates direct MySQL queries, Python data rendering, and interactive HTML output generated through **Quarto**.

---

## 🧩 Tools and Technologies

This project uses:

- **Quarto** — for dynamic report generation combining SQL, Python, and Markdown  
- **Mermaid** — for the Crow’s Foot ER diagram representation  
- **Python (3.11.6)** — for SQL execution and data retrieval  
- **itables** — to display interactive HTML tables inside the report  
- **SQLAlchemy / PyMySQL / dotenv** — to handle MySQL connections and environment variables  
- **Poetry** — to manage dependencies and virtual environments  
- **Pyenv** — to isolate interpreter versions for consistent runtime behavior  

---

## 🧠 Database Summary

The Resume Database contains three relational tables that together capture who works at the company, which skills exist, and who has acquired which skills:

- **people** — stores employee demographic and contact information  
- **skills** — defines a catalog of technical and professional skills  
- **peopleskills** — records which people have which skills, and the date acquired  

This schema forms a **many-to-many** relationship between `people` and `skills`, implemented via the `peopleskills` junction table.

Referential integrity is enforced through foreign keys:
- `peopleskills.people_id → people.id`  
- `peopleskills.skills_id → skills.id`

---

## 🧩 Repository Structure
```
cmsc408-fa2025-hw6-CaptnKristmas/
│
├── .vscode/ # VS Code workspace settings
│ └── settings.json # Python interpreter and linting settings
│
├── reports/
│ ├── report.qmd # Quarto report (main deliverable)
│ ├── _quarto.yml # Quarto project metadata
│ ├── my-ddl.sql # SQL DDL for table creation and inserts
│ ├── helpers.py # Helper utilities for connecting and querying MySQL
│ ├── _init__.py # (Marks reports as a package)
│ ├── .env # Environment variables for database connection
│ ├── .gitignore # Ignore files for Git
│ ├── report.html # Rendered HTML output
│ ├── report_files\libs # Quarto generated supporting files
│ └──  _pycache__/
│   ├── helpers.cpython-310.pyc # Compiled helper utilities
│   └── helpers.cpython-311.pyc # Compiled helper utilities
│
├── pyproject.toml # Poetry environment definition
├── poetry.lock # Poetry dependency lock file
├── .gitignore # Ignore files for Git
└── readME.md # This documentation file
```
---

## ⚙️ Setup Instructions for Fresh Development Environment

### 1. Environment Setup

Ensure you have the following installed:

- **Python 3.11+**
- **Poetry**
- **MySQL Server**
- **Quarto**
- **VS Code**

Activate the Poetry environment:
```bash
poetry shell
```
Install dependencies:
```bash
poetry install
```
### 2. Configure Environment Variables

Create a *.env* file in the *reports/* directory with your MySQL credentials:

MYSQL_USER=your_username   
MYSQL_PASSWORD=your_password   
MYSQL_HOST=localhost   
MYSQL_DB=your_database_name

### 3. Database Setup

Run the SQL DDL script to create tables and insert data.

### 4. Load Database

Execute the provided Python script to access and retrieve data from the database. 

Expected output: `No errors detected while loading: ./my-ddl.sql`

---

## 🧪 Rendering Instructions

To render the Quarto report into a standalone HTML document, run in Virtual Studio Code terminal: `cd ./reports` and then: `quarto render report.qmd`

Alternatively, simply open the pre-rendered `report.html` file included in this repository.