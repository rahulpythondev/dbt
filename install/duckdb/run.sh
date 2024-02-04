#!/bin/bash

# Running Duckdb
cd install/duckdb
wget https://github.com/duckdb/duckdb/releases/download/v0.9.2/duckdb_cli-linux-amd64.zip
unzip duckdb_cli-linux-amd64.zip
rm -rf duckdb_cli-linux-amd64.zip

## Running Duckdb
db_file="hr.db"
./duckdb $db_file

## Navigating back
cd ../../