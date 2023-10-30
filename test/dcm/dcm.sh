#!/bin/bash

# This test file will be executed against one of the scenarios devcontainer.json test that
# includes the 'color' feature with "greeting": "dcm" option.

set -e

# Optional: Import test library bundled with the devcontainer CLI
source dev-container-features-test-lib

# Feature-specific tests
# The 'check' command comes from the dev-container-features-test-lib.
export DCM_DIR=/tmp
export DCM_PROJECT=dcm
touch $DCM_DIR/$DCM_PROJECT.yml
check "execute command" bash -c "dcm | grep 'DCM (Docker-Compose Manager)'"

# Report results
# If any of the checks above exited with a non-zero exit code, the test will fail.
reportResults
