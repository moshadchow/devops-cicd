#!/bin/bash

set -e

echo "Running website tests..."

test -f index.html

grep -q "Welcome to DevOps CI/CD" index.html

grep -q "Deployed automatically using GitHub Actions" index.html

echo "All tests passed!"