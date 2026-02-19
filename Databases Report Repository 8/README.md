# CMSC408 - Fall 2025 - Homework 8 – World Bank Indicator Analysis

**Author:** Vladimir Paraschiv  
**Course:** CMSC 408 – Database Systems  
**Semester:** Fall 2025  
**Date:** December 04 2025  

---

## 📘 Overview

This project uses World Bank country-level metadata to explore how SQL can be applied to real-world data analysis and transformation. The primary dataset comes from the `world_bank_data.wdi_country` table, which includes information such as country names, ISO codes, regions, and income categories.

For this assignment, I:

- Created a personal working copy of the country table (`my_wdi_country`) that includes only valid countries.
- Explored the domain of regions and income groups.
- Counted countries by region and income category.
- Built contingency-style tables showing the distribution of countries across region and income categories.
- Used CTEs, joins, and conditional aggregation to identify missing region–income combinations and compute percentages of total countries.

The later tasks emphasize more advanced SQL techniques such as CTEs, `CROSS JOIN`, pivoting with `CASE`, and multi-step aggregations to support data analysis.

---

## 🧩 Tools and Technologies

This project uses:

- **Quarto** — to weave SQL, Python, and narrative text into a single dynamic report  
- **Python (via Jupyter/Quarto)** — for executing SQL queries and rendering HTML tables  
- **itables** — for interactive viewing of query results in the browser    
- **SQLAlchemy** / **PyMySQL** / **dotenv** — for database connectivity and configuration  
- **MySQL** — as the backend relational database (including the `world_bank_data` schema)  
- **Poetry** — to manage Python dependencies and virtual environments  
- **VS Code** — recommended editor for working with both the report and the code  

---

## 🧠 Data & Database Summary

The core dataset is the World Bank Indicator (WDI) country metadata:

- **Source table:** `world_bank_data.wdi_country`  
- **Working copy:** `my_wdi_country` (created in my own database)

Key fields used in the analysis include:

- `Country Code` – primary country identifier  
- `Short Name` and `Long Name` – human-readable country names  
- `Region` – World Bank region (e.g., *Europe & Central Asia*, *Sub-Saharan Africa*)  
- `Income Group` – income classification (e.g., *High income*, *Upper middle income*, *Lower middle income*, *Low income*)  
- `2-alpha code` and `WB-2 code` – alternative country code systems  

The assignment tasks build from basic to advanced:

- **Basic exploration:** counting rows, listing non-countries, filtering by region, and examining country codes.  
- **Aggregations:** counting countries by region and by income group (`GROUP BY`, `ORDER BY`, aggregates).  
- **Pivot-style tables:** using `CASE` with `SUM()` to create region-by-income tables like in Task 15.  
- **Data correction:** updating an income group value (e.g., Venezuela to “High income”) and ensuring subsequent queries use the corrected data.  
- **Advanced analysis (Tasks 18–21):**
  - Generating all possible region–income combinations via `CROSS JOIN`.
  - Using CTEs and `LEFT JOIN` to identify missing combinations.
  - Computing regional, income-group, and overall totals.
  - Calculating percentages to understand how countries are distributed across income categories.

These steps mirror typical data-wrangling work in analytics: cleaning, restructuring, summarizing, and interpreting the data. 

---

## 🗂️ Repository Structure

```text
cmsc408-fa2025-hw8-template/
│
├── reports/
│   ├── report.qmd        # Main Quarto report (Homework 8 writeup + code)
│   ├── _quarto.yml       # Rendering configuration and metadata
│   ├── helpers.py        # SQL and connection utilities (run_sql_and_return_*)
│   ├── .gitignore        # Ignore Quarto output and environment files
│   ├── report.html       # Rendered HTML output
│   ├── pycache/          # Python cache files
│   └── report_files/     # Embedded Quarto assets
│
├── source-data/         # (optional) code to load data into MySQL
│
├── pyproject.toml        # Poetry environment configuration
├── poetry.lock           # Locked dependency versions
├── .env                  # MySQL credentials & DB name (not committed)
├── .gitignore            # Ignore .env and virtual environment files
└── README.md             # This documentation file 
```

---

## ⚙️ Setup Instructions

1. Start the Poetry environment:

    ```bash
    poetry shell
    ```

2. Install dependencies:

    ```bash
    poetry install
    ```

3. Create a `.env` file in the project root with your MySQL credentials:

    ```text
    MYSQL_USERNAME=your_username
    MYSQL_PASSWORD=your_password
    MYSQL_HOST=cmsc-vcu.com
    MYSQL_DB_NAME=your_database_name
    ```
    - HW_DB_NAME should be your personal database where you will create `my_wdi_country`.
    - The `world_bank_data` schema should already exist on the server.

4. Initialize and test the database connection:

    - Open `reports/report.qmd` in VS Code and render it to HTML (see below).
    - Early in the report, there is a test query that should return results if the connection is successful.

5. Render the Quarto report:

    ```bash
    cd reports
    quarto render report.qmd
    ```
    - If the render completes successfully, `report.html` will contain the full report and results.
    - You can also open `report.qmd` directly in a browser if you do not need to re-render.
