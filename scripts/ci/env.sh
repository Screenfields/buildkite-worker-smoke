#!/bin/sh
# Prints the job's environment, sorted, to check which variables reach the container.
set -eu
echo "--- environment"
env | sort
