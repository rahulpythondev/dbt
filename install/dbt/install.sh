#!/bin/bash

## Installing DBT
cd install/dbt
python3 -m venv dbt-env 
source dbt-env/bin/activate 
python -m pip install dbt-duckdb dbt-snowflake 

## Verification
dbt --version

## Navigating back
cd ../../