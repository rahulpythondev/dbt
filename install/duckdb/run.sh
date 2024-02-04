#!/bin/bash

## Running Duckdb
cd install/duckdb
wget https://github.com/duckdb/duckdb/releases/download/v0.9.2/duckdb_cli-linux-amd64.zip
unzip duckdb_cli-linux-amd64.zip
rm -rf duckdb_cli-linux-amd64.zip

## Adding to Path
export PATH="/workspace/dbt/install/duckdb/:$PATH"

## Running Duckdb
db_file="hr.db"
nohup duckdb $db_file &

## Navigating back
cd ../../