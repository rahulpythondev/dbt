#!/bin/bash

## Installing Duckdb
cd install/motherduck
wget https://github.com/duckdb/duckdb/releases/download/v0.9.2/duckdb_cli-linux-amd64.zip
unzip duckdb_cli-linux-amd64.zip
rm -rf duckdb_cli-linux-amd64.zip

## Adding to Path
export PATH="/workspace/dbt/install/motherduck/:$PATH"

## Running Duckdb
# export MOTHERDUCK_TOKEN=''

## Navigating back
cd ../../

## Running MotherDuck
duckdb md:?motherdock_token=$MOTHERDUCK_TOKEN