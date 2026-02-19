# CMSC408 – Fall 2025 – Homework 10 – World Bank Life Expectancy & Analytic Functions

**Author:** Vladimir Paraschiv  
**Course:** CMSC 408 – Database Systems  
**Semester:** Fall 2025  
**Date:** December 08 2025  

---

## Overview

This project analyzes global life expectancy trends using the World Bank’s World Development Indicators (WDI) dataset, with a focus on analytic (window) functions in SQL. Building on Homework 8 and 9, this assignment emphasizes transforming data into stacked format and applying advanced SQL techniques to study long-term trends, rankings, and regional patterns in life expectancy from 1960–2022.

Throughout the assignment, I:

- Created a clean local copy of country metadata (wdi_country) containing only true countries.
- Dynamically generated a stacked life expectancy table (wdi_data_stacked) using Python.
- Used window functions such as LAG(), RANK(), and moving averages.
- Calculated year-over-year changes, 3-year rolling averages, and global, regional, and income-based rankings.
- Built a signature analytic capstone combining country metadata with stacked life expectancy data.

This assignment closely reflects real-world data engineering and analytics workflows where time-series restructuring and window functions are essential for insight generation.

---

## Tools and Technologies

This project uses:

- Quarto — integrating SQL, Python, and narrative analysis
- Python (via Quarto/Jupyter) — for SQL execution and HTML rendering
- itables — interactive table display
- SQLAlchemy, PyMySQL, dotenv — database connection and credential management
- MySQL — hosting world_bank_data and project tables
- Poetry — dependency and virtual environment management
- VS Code — recommended editor for development and rendering

---

## Data & Database Summary

The assignment works with three primary World Bank tables:

- world_bank_data.wdi_country — country metadata (region, income group, etc.)
- world_bank_data.wdi_series — indicator metadata and definitions
- world_bank_data.wdi_data — numeric indicator values for all countries (1960–2023)

Key transformations and concepts explored:

- Wide-to-stacked transformation of life expectancy data
- Time-series analytics using SQL window functions
- Lag-based year-over-year change detection
- Rolling averages for volatility smoothing
- Ranking by year, region, and income group
- Multi-step CTE pipelines for clean analytic queries

---

## Repository Structure

```text
cmsc408-fa2025-hw10-CaptnKristmas/
│
├── reports/
│   ├── report.qmd
│   ├── _quarto.yml
│   ├── helpers.py
│   ├── .gitignore
│   ├── report.html
│   ├── __pycache__/
│   └── report_files/
│
├── source-data/
│
├── .gitignore
├── pyproject.toml
├── poetry.lock
├── .env
└── README.md
```

---

## Setup Instructions

1. Activate the Poetry environment:

   poetry shell

2. Install dependencies:

   poetry install

3. Create a .env file at the project root:

   MYSQL_USERNAME=your_username  
   MYSQL_PASSWORD=your_password  
   MYSQL_HOSTNAME=cmsc-vcu.com  
   HW10_DB_NAME=your_database_name  

4. Render the Quarto report:

   cd reports  
   quarto render report.qmd  

This will generate report.html with all tasks executed.

---

## Key Analytical Capabilities Demonstrated

- Time-series restructuring using stacked data
- Year-over-year life expectancy change analysis
- Global improvement spike detection
- 3-year moving average volatility analysis
- Global life expectancy ranking for 2022
- Regional rankings for 2022
- Income group rankings for 2022

---

## Final Capstone Insight

The final capstone revealed that life expectancy development is highly unequal and volatile across regions and income groups. Wealthy regions consistently lead in longevity, but several developing nations show dramatic swings tied to conflict, recovery, and health policy changes. Regional averages often conceal sharp internal changes, demonstrating the importance of time-aware, partitioned analytics when analyzing global development patterns.
