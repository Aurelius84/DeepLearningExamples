#!/bin/bash

log_file=$1

cat $log_file | grep Iteration | cut -d " " -f 10 | tail -n 20

cat $log_file | grep Iteration | cut -d " " -f 10 | tail -n 20 | awk '{s+=$1} END {printf "Average Throughout: %.2f\n", s/20}'
