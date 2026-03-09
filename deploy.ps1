# TechnologyCrowd Website - Quick Deploy Script
# This script helps you quickly deploy your website to GitHub Pages

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "TechnologyCrowd Website Deployment Tool" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Check if git is initialized
$gitExists = Test-Path ".git"

if (-not $gitExists) {
    Write-Host "⚠️  Git repository not initialized" -ForegroundColor Yellow
    $initGit = Read-Host "Initialize git repository? (Y/N)"
    
    if ($initGit -eq "Y" -or $initGit -eq "y") {
        Write-Host "Initializing git repository..." -ForegroundColor Green
        git init
        Write-Host "✅ Git initialized" -ForegroundColor Green
    } else {
        Write-Host "❌ Deployment cancelled" -ForegroundColor Red
        exit
    }
}

# Check for GitHub username
Write-Host ""
Write-Host "Enter your GitHub username:" -ForegroundColor Cyan
$githubUsername = Read-Host

if ([string]::IsNullOrWhiteSpace($githubUsername)) {
    Write-Host "❌ GitHub username is required" -ForegroundColor Red
    exit
}

# Repository name
$repoName = "technology-crowd-website"
$remoteUrl = "https://github.com/$githubUsername/$repoName.git"

Write-Host ""
Write-Host "Repository will be created at:" -ForegroundColor Yellow
Write-Host $remoteUrl -ForegroundColor White
Write-Host ""

# Confirm before proceeding
$confirm = Read-Host "Continue with deployment? (Y/N)"
if ($confirm -ne "Y" -and $confirm -ne "y") {
    Write-Host "❌ Deployment cancelled" -ForegroundColor Red
    exit
}

# Add all files
Write-Host ""
Write-Host "Adding files to git..." -ForegroundColor Green
git add .

# Commit
Write-Host "Creating commit..." -ForegroundColor Green
$commitMessage = "Deploy TechnologyCrowd website - $(Get-Date -Format 'yyyy-MM-dd HH:mm')"
git commit -m $commitMessage

# Check if remote exists
$remoteExists = git remote | Select-String "origin"

if ($remoteExists) {
    Write-Host "⚠️  Remote 'origin' already exists" -ForegroundColor Yellow
    Write-Host "Current remote: $(git remote get-url origin)" -ForegroundColor White
    
    $updateRemote = Read-Host "Update remote URL? (Y/N)"
    if ($updateRemote -eq "Y" -or $updateRemote -eq "y") {
        git remote remove origin
        git remote add origin $remoteUrl
        Write-Host "✅ Remote updated" -ForegroundColor Green
    }
} else {
    git remote add origin $remoteUrl
    Write-Host "✅ Remote added" -ForegroundColor Green
}

# Set main branch
Write-Host "Setting main branch..." -ForegroundColor Green
git branch -M main

# Push to GitHub
Write-Host ""
Write-Host "Pushing to GitHub..." -ForegroundColor Green
Write-Host "You may be prompted for GitHub credentials..." -ForegroundColor Yellow
Write-Host ""

try {
    git push -u origin main
    Write-Host ""
    Write-Host "========================================" -ForegroundColor Green
    Write-Host "✅ Deployment Successful!" -ForegroundColor Green
    Write-Host "========================================" -ForegroundColor Green
    Write-Host ""
    Write-Host "Next steps:" -ForegroundColor Cyan
    Write-Host "1. Go to: https://github.com/$githubUsername/$repoName/settings/pages" -ForegroundColor White
    Write-Host "2. Under 'Build and deployment', select:" -ForegroundColor White
    Write-Host "   - Source: Deploy from a branch" -ForegroundColor White
    Write-Host "   - Branch: main / (root)" -ForegroundColor White
    Write-Host "3. Click 'Save'" -ForegroundColor White
    Write-Host ""
    Write-Host "Your website will be live at:" -ForegroundColor Cyan
    Write-Host "https://$githubUsername.github.io/$repoName/" -ForegroundColor Green
    Write-Host ""
    Write-Host "📖 For custom domain setup, see DEPLOYMENT.md" -ForegroundColor Yellow
    Write-Host "🔍 For SEO setup, see GOOGLE-SEO-GUIDE.md" -ForegroundColor Yellow
    Write-Host ""
} catch {
    Write-Host ""
    Write-Host "========================================" -ForegroundColor Red
    Write-Host "❌ Deployment Failed" -ForegroundColor Red
    Write-Host "========================================" -ForegroundColor Red
    Write-Host ""
    Write-Host "Error: $_" -ForegroundColor Red
    Write-Host ""
    Write-Host "Common issues:" -ForegroundColor Yellow
    Write-Host "1. Repository doesn't exist on GitHub" -ForegroundColor White
    Write-Host "   → Create it first: https://github.com/new" -ForegroundColor White
    Write-Host "   → Name it: $repoName" -ForegroundColor White
    Write-Host ""
    Write-Host "2. Authentication failed" -ForegroundColor White
    Write-Host "   → Use GitHub Personal Access Token" -ForegroundColor White
    Write-Host "   → Create at: https://github.com/settings/tokens" -ForegroundColor White
    Write-Host ""
    Write-Host "3. Permission denied" -ForegroundColor White
    Write-Host "   → Check repository permissions" -ForegroundColor White
    Write-Host ""
}

Write-Host ""
Write-Host "Press any key to exit..." -ForegroundColor Gray
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
