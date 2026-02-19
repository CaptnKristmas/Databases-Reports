# Homework 4 – Database Normalization

**Author:** Vladimir Paraschiv  
**Email:** [paraschivv@vcu.edu]
**Course:** CMSC 408 – Database Systems  
**Assignment:** Homework 4 – Database Normalization
**Semester:** Fall 2025  
**Date:** October 15, 2025

[🔗 View GitHub Repository](https://github.com/cmsc-vcu/cmsc408-fa2025-hw4-CaptnKristmas)

---

## 📘 Overview

This project explores the process of **database normalization**, a systematic method for organizing data efficiently within relational databases. The goal is to minimize redundancy, prevent anomalies, and maintain data integrity by decomposing complex tables into smaller, related tables.

Through worked examples, formal definitions, and relational algebra problems, this project demonstrates normalization up to **Boyce-Codd Normal Form (BCNF)**.

---

## 🧩 Learning Objectives

- Understand the theory and purpose of database normalization.  
- Apply **functional dependencies**, **closures**, and **minimum covers** to analyze data structures.  
- Perform **decomposition** of relations into higher normal forms (1NF → 2NF → 3NF → BCNF).  
- Express relational operations using **relational algebra**.  
- Reflect on challenges and trade-offs between normalization and database performance.

---

## 🧮 Tools and References

This project uses both educational and analytical tools for normalization and relational algebra exercises:

- [Raymond Cho’s Relational Database Tools](http://raymondcho.net/RelationalDatabaseTools/RelationalDatabaseTools.html)  
- [Griffith University Normalization Tool](http://www.ict.griffith.edu.au/normalization_tools/normalization/ind.php)  
- [Ashutosh Tripathi – BCNF Algorithm](https://ashutoshtripathi.com/gate/dbms/normalization-normal-forms/procedure-to-decompose-a-given-relation-in-bcnf-bcnf-algorithm/)  
- [GeeksforGeeks – Normal Forms](https://www.geeksforgeeks.org/first-normal-form-1nf/?ref=lbp)  
- [RPI CSCI-4380 Database Lectures](https://www.cs.rpi.edu/~sibel/csci4380/fall2020/recordings.html)

---

## 📖 Key Concepts

The report defines and interrelates essential normalization concepts such as:

- **Relation, Attribute, and Tuple**  
- **Functional Dependency (FD)** and **Armstrong’s Axioms**  
- **Candidate Key**, **Primary Key**, **Super Key**, **Composite Key**  
- **Prime vs. Non-Prime Attributes**  
- **Partial and Transitive Dependencies**  
- **Attribute Closure** and **Minimum Cover**  
- **1NF**, **2NF**, **3NF**, **BCNF**, and **4NF**

Each definition is supported with **formal notation and LaTeX expressions** to emphasize theoretical understanding.

---

## 🛠️ Assignment Structure
The assignment is divided into three main sections:  
1. **Terms and Definitions:**  
   - Identify vocabulary and concepts.  
2. **Practice Problems:**  
    - Solve functional dependency and closure problems.  
3. **Normalization Exercises:**  
    - Decompose relations from real world datasets into Boyce-Codd Normal Form (BCNF).  
4. **Relational Algebra Queries:**  
    - Write queries to manipulate and retrieve data from normalized relations.

---

## 💭 Reflection

**Most Difficult:** Understanding and writing relational algebra queries.  
**Easiest:** Using the Cho calculator to perform decomposition and closure analysis.  
**Advice for Future Students:** Use visualization tools and ChatGPT to clarify each normalization step. Understanding the relationships before decomposing makes the process much clearer.

---

## 📂 Repository Structure

```text
cmsc408-fa2025-hw4-CaptnKristmas/  
│  
├── .gitignore  
├── readME.md  
└── reports/  
    │  
    ├── _quarto.yml  
    ├── report.qmd  
    ├── report.html  
    └── .gitignore
```
---

## How to View the Report

Open `report.html` in your web browser to view the complete report with formatted text, equations, and images. Alternatively, you can render `report.qmd` using [Quarto](https://quarto.org/docs/get-started/) to generate updated HTML or PDF versions of your own.

---

## 🧑‍🏫 Acknowledgments

- **Instructor:** CMSC 408 Faculty – Virginia Commonwealth University  
- **Tools:** [Raymond Cho’s FD Calculator](http://raymondcho.net/RelationalDatabaseTools/RelationalDatabaseTools.html)  
- **Author:** 2025 Vladimir Paraschiv