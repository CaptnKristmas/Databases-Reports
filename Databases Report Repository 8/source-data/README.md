# Creating source code for HW8

***OPTIONAL***

As an example, this folder contains the code used to populate the MYSQL server with data for homework assignment 8.

Everything needed is contained in *loader.qmd*. This pipeline:

1. downloads source data in ZIP format from world bank data store.
2. unzips required CSV files.
3. load CSVs into MYSQL using Pandas and sqlalchemy.
4. set permissions for users to access the data.

