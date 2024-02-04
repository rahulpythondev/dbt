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
  SHOW TABLES;
  show databases;
  SELECT 
        e.employee_id,   
        e.job_id,   
        e.manager_id,   
        e.department_id,  
        d.location_id
  from employees e,
       departments d
  where 
       e.department_id = d.department_id;
  ```
- DBT installation steps
  ```bash
  ps aux | grep duckdb
  duckdb --host=localhost --port=56789 --username=duckuser --password=duckpasswd 2429
  ```