#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

# Build the Flutter web app
flutter build web

# Navigate to the build output directory
cd build/web

# Initialize a new Git repository
git init

# Configure Git user
git config user.name "github-actions[bot]"
git config user.email "github-actions[bot]@users.noreply.github.com"

# Add all files to the new repository
git add .

# Commit the changes
git commit -m "Deploy to GitHub Pages"

# Force push to the gh-pages branch
git push --force "https://${GITHUB_ACTOR}:${GITHUB_TOKEN}@github.com/${GITHUB_REPOSITORY}.git" master:gh-pages
