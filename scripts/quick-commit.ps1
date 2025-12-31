param(
    [Parameter(Mandatory=$true)]
    [string]$Message
)

# Check if there are changes to commit
$status = git status --short
if(-not $status) {
    Write-Host "[INFO] No changes to commit" -ForegroundColor Cyan
    exit 0
}

# Show what will be committed
Write-Host "`n[INFO] Changes to commit:" -ForegroundColor Cyan
Write-Host $status

# Stage all changes
git add .
if ($LASTEXITCODE -ne 0) {
    Write-Host "[ERROR] Failed to stage changes" -ForegroundColor Red
    exit 1
}

# Commit changes
git commit -m $Message
if ($LASTEXITCODE -ne 0) {
    Write-Host "[ERROR] Failed to commit changes" -ForegroundColor Red
    exit 1
}
Write-Host "[OK] Committed: $Message" -ForegroundColor Green

# Push to Github
git push
if ($LASTEXITCODE -ne 0) {
    Write-Host "[ERROR] Failed to push to GitHub" -ForegroundColor Red
    exit 1
}
Write-Host "[OK] Pushed to GitHub successfully" -ForegroundColor Green