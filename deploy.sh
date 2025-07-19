#!/bin/bash

# Build the project
echo "Building project..."
npm run build

# Add all files to git
echo "Adding files to git..."
git add .

# Commit changes
echo "Committing changes..."
git commit -m "Deploy to GitHub Pages"

# Push to main branch
echo "Pushing to main branch..."
git push origin main

echo "Deployment complete! Your site should be available at https://MariaLuisaBa.github.io"
echo "Note: It may take a few minutes for changes to appear." 