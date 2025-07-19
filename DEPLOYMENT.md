# GitHub Pages Deployment Guide

This guide will help you deploy your Maria Luisa ESL Teacher portfolio to GitHub Pages.

## Prerequisites

1. A GitHub account
2. Your project pushed to a GitHub repository

## Setup Steps

### 1. Create GitHub Repository

**For User Page (MariaLuisaBa.github.io):**
1. Go to [GitHub](https://github.com) and create a new repository
2. Name it `MariaLuisaBa.github.io` (exactly like this)
3. Make it public (required for free GitHub Pages)
4. Don't initialize with README, .gitignore, or license

**For Project Page (alternative):**
1. Name it `mariasite` (or your preferred name)
2. Update homepage in package.json to `https://MariaLuisaBa.github.io/mariasite`

### 2. Update Configuration

For user page (`MariaLuisaBa.github.io`):
- Homepage in `package.json`: `"homepage": "https://MariaLuisaBa.github.io"`
- Base in `vite.config.ts`: `base: '/'`

For project page (`mariasite`):
- Homepage in `package.json`: `"homepage": "https://MariaLuisaBa.github.io/mariasite"`
- Base in `vite.config.ts`: `base: '/mariasite/'`

### 3. Push Your Code

```bash
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/MariaLuisaBa/MariaLuisaBa.github.io.git
git push -u origin main
```

### 4. Enable GitHub Pages

**For User Page (MariaLuisaBa.github.io):**
1. Go to your repository on GitHub
2. Click on "Settings" tab
3. Scroll down to "Pages" section
4. Under "Source", select "Deploy from a branch"
5. Select "main" branch and "/ (root)" folder
6. Click "Save"

**For Project Page:**
1. Go to your repository on GitHub
2. Click on "Settings" tab
3. Scroll down to "Pages" section
4. Under "Source", select "GitHub Actions"
5. This will use the workflow in `.github/workflows/deploy.yml`

### 5. Install Dependencies and Deploy

```bash
npm install
npm run deploy
```

## Automatic Deployment

**For User Page:** GitHub Pages will automatically serve from the main branch
**For Project Page:** GitHub Actions will automatically build and deploy on push to main

## Manual Deployment

If you want to deploy manually:

```bash
npm run build
npm run deploy
```

## Access Your Site

**User Page:** `https://MariaLuisaBa.github.io`
**Project Page:** `https://MariaLuisaBa.github.io/mariasite`

## Troubleshooting

### Permission Errors (403):
1. For user pages, use "Deploy from a branch" instead of GitHub Actions
2. Make sure the repository is public
3. Check that you're using the correct branch (main)

### If the site doesn't load:
1. Check that the repository is public
2. Verify the homepage URL in package.json
3. Wait a few minutes for the first deployment to complete
4. Check the Actions tab in your repository for any build errors

### If assets don't load:
1. Make sure the base path in `vite.config.ts` is correct
2. Clear your browser cache
3. Check the browser console for 404 errors

## Custom Domain (Optional)

To use a custom domain:
1. Add a `CNAME` file in the `public` folder with your domain
2. Configure your domain's DNS settings
3. Update the homepage in package.json to your custom domain 