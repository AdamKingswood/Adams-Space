# Pre-deployment checklist script
# Run this before pushing to ensure everything is ready

Write-Host "🔍 Running deployment checks..." -ForegroundColor Cyan
Write-Host ""

# Check for placeholder URLs
Write-Host "Checking for placeholder URLs..." -ForegroundColor Yellow
$placeholders = Select-String -Path "*.html" -Pattern "yoursite.com|example.com|TODO|FIXME" -SimpleMatch
if ($placeholders) {
    Write-Host "⚠️  Found placeholders:" -ForegroundColor Red
    $placeholders | ForEach-Object { Write-Host "  $_" }
} else {
    Write-Host "✅ No placeholders found" -ForegroundColor Green
}
Write-Host ""

# Check for console.log in production
Write-Host "Checking for console.log statements..." -ForegroundColor Yellow
$logs = Select-String -Path "*.js" -Pattern "console.log"
if ($logs) {
    Write-Host "⚠️  Found console.log statements:" -ForegroundColor Red
    $logs | ForEach-Object { Write-Host "  $_" }
} else {
    Write-Host "✅ No console.log found" -ForegroundColor Green
}
Write-Host ""

# Check git status
Write-Host "Checking git status..." -ForegroundColor Yellow
$status = git status --short
if ($status) {
    Write-Host "📝 Uncommitted changes:" -ForegroundColor Yellow
    git status --short
} else {
    Write-Host "✅ Working tree clean" -ForegroundColor Green
}
Write-Host ""

Write-Host "🎯 Deployment check complete!" -ForegroundColor Cyan