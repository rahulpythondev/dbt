#!/bin/bash

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