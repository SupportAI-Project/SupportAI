#!/bin/bash

echo "Creating a new PR..."
# Navigate to the .github/workflows/pr_workflow directory
cd "$(dirname "$0")"

# Identify the touched code parts
./identify_touched_code.sh

# Tag the code owners
./tag_code_owners.sh

# Generate the PR description
./generate_pr_description.sh