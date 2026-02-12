#!/bin/bash
set -e
source dev-container-features-test-lib

check "rustc available" bash -c "command -v rustc"
check "cargo available" bash -c "command -v cargo"
check "node available" bash -c "command -v node"
check "docker available" bash -c "command -v docker"
check "gh available" bash -c "command -v gh"
check "bat available" bash -c "command -v bat"

reportResults
