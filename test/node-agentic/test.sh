#!/bin/bash
set -e
source dev-container-features-test-lib

check "node available" bash -c "command -v node"
check "npm available" bash -c "command -v npm"
check "docker available" bash -c "command -v docker"
check "gh available" bash -c "command -v gh"
check "bat available" bash -c "command -v bat"

reportResults
