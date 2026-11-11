#!/bin/bash

set -e

PROJECT_DIR="/home/almalinux/devops-cicd"
WEB_ROOT="/var/www/devops-cicd"

echo "Starting deployment..."

cd "$PROJECT_DIR"

echo "Pulling latest code..."
git pull --ff-only origin main

echo "Running tests..."
bash tests/test_site.sh

echo "Deploying website..."
cp index.html "$WEB_ROOT/index.html"

echo "Deployment completed successfully"