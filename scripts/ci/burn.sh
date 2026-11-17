#!/bin/sh
# Loads every CPU and allocates memory in steps for 60 seconds, to check the container's limits.
# The memory limit is expected to stop the allocation.
set -u
n=$(nproc)
echo "--- loading $n CPUs and allocating memory for 60 seconds"
i=0
while [ "$i" -lt "$n" ]; do
    timeout 60 sh -c 'while :; do :; done' &
    i=$((i + 1))
done
timeout 60 node -e 'const a = []; setInterval(() => { a.push(Buffer.alloc(256 * 1024 * 1024, 1)); console.log(a.length * 256 + " MB allocated"); }, 500);'
echo "--- memory allocation ended with exit code $?"
wait
echo "--- done"
