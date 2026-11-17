# buildkite-worker-smoke

Four small shell scripts for checking a self-hosted CI worker. `scripts/ci/smoke.sh` lists the workspace and prints the user the job runs as. `scripts/ci/sleep.sh` sleeps for five minutes, so a running job can be cancelled. `scripts/ci/burn.sh` loads the CPUs and allocates memory for a minute, to check resource limits. `scripts/ci/env.sh` prints the job's environment, to check which variables reach the container. The scripts make no network calls and are meant to run in a disposable container.

`.buildkite/test-image.Dockerfile` names the test image: one official Docker library image pinned by digest. The `variant/*` branches change only that file, to check that the worker refuses Dockerfiles outside its rules.
