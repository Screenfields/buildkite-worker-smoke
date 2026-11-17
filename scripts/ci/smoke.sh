#!/bin/sh
# Lists the workspace and prints the user the job runs as.
set -eu
echo "--- workspace"
ls -la /workspace
echo "--- identity"
id
