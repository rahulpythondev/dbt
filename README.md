# Database Build Tools

## Overview
- 

## Installation
- Duckdb installation steps
  ```bash
  # Installing Duckdb
  cd install/duckdb

  wget https://github.com/duckdb/duckdb/releases/download/v0.9.2/duckdb_cli-linux-amd64.zip
  unzip duckdb_cli-linux-amd64.zip
  rm -rf duckdb_cli-linux-amd64.zip

  # Downloading Hr Schema
  wget https://github.com/rahgadda/knowledge-base/raw/main/01-ML/03-projects/02-duckdb/00-HR/hr.db

  # Running Duckdb
  db_file="hr.db"
  ./duckdb $db_file

  # Sample Query
  create database hr;
  CREATE TABLE jobs AS SELECT * FROM parquet_scan('https://github.com/rahgadda/knowledge-base/raw/main/01-ML/03-projects/02-duckdb/00-HR/hr.parquet/jobs.parquet');
  CREATE TABLE regions AS SELECT * FROM parquet_scan('https://github.com/rahgadda/knowledge-base/raw/main/01-ML/03-projects/02-duckdb/00-HR/hr.parquet/regions.parquet');
  CREATE TABLE countries AS SELECT * FROM parquet_scan('https://github.com/rahgadda/knowledge-base/raw/main/01-ML/03-projects/02-duckdb/00-HR/hr.parquet/countries.parquet');
  CREATE TABLE locations AS SELECT * FROM parquet_scan('https://github.com/rahgadda/knowledge-base/raw/main/01-ML/03-projects/02-duckdb/00-HR/hr.parquet/locations.parquet');
  CREATE TABLE departments AS SELECT * FROM parquet_scan('https://github.com/rahgadda/knowledge-base/raw/main/01-ML/03-projects/02-duckdb/00-HR/hr.parquet/departments.parquet');
  CREATE TABLE employees AS SELECT * FROM parquet_scan('https://github.com/rahgadda/knowledge-base/raw/main/01-ML/03-projects/02-duckdb/00-HR/hr.parquet/employees.parquet');
  # drop table jobs;
  # drop table regions;
  # drop table countries;
  # drop table locations;
  # drop table departments;
  # drop table employees;
  SHOW TABLES;
  show databases;
  SELECT 
        e.employee_id,   
        e.job_id,   
        e.manager_id,   
        e.department_id,  
        d.location_id
  from hr.employees e,
       hr.departments d
  where 
       e.department_id = d.department_id;
  ```
- DBT installation steps
  ```bash

  ```