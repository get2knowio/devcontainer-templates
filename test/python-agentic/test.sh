#!/bin/bash
set -e
source dev-container-features-test-lib

check "python3 available" bash -c "command -v python3"
check "poetry available" bash -c "command -v poetry"
check "node available" bash -c "command -v node"
check "docker available" bash -c "command -v docker"
check "gh available" bash -c "command -v gh"
check "bat available" bash -c "command -v bat"

reportResults
