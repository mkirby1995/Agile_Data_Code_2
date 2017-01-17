#!/usr/bin/env bash

# Get the absolute path of this script, see http://bit.ly/find_path
ABSOLUTE_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/$(basename "${BASH_SOURCE[0]}")"
ABSOLUTE_DIR=$(dirname "${ABSOLUTE_PATH}")

# Extract to Agile_Data_Code_2/data/on_time_performance.parquet, wherever we are executed from
cd $ABSOLUTE_DIR/../data/
curl -Lko ./simple_flight_delay_features.jsonl.bz2 http://s3.amazonaws.com/agile_data_science/simple_flight_delay_features.jsonl.bz2