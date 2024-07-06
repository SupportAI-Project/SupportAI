#!/bin/bash

echo "Identifying touched code parts..."
# Get the current branch name
current_branch=$(git rev-parse --abbrev-ref HEAD)

# Get the list of touched files
touched_files=$(git diff --name-only master..$current_branch)

echo "Touched files:"
echo "$touched_files"