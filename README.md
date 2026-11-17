# buildkite-worker-smoke

Three small shell scripts for checking a self-hosted CI worker. `scripts/ci/smoke.sh` lists the workspace and prints the user the job runs as. `scripts/ci/sleep.sh` sleeps for five minutes, so a running job can be cancelled. `scripts/ci/burn.sh` loads the CPUs and allocates memory for a minute, to check resource limits. The scripts make no network calls and are meant to run in a disposable container.
