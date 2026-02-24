# Chuyển trực tiếp đến thư mục chứa project của bạn
Set-Location -Path "D:\vinhlin.github.io"

Write-Host "--- 🚀 Running Build Blog (Hugo + Pagefind) ---" -ForegroundColor Cyan

# 1. Chạy Hugo Build
Write-Host "[1/2] Run Hugo build in folder /docs..." -ForegroundColor Yellow
hugo --config hugo.toml -D

if ($LASTEXITCODE -ne 0) {
    Write-Host "❌ Error: Hugo build fail!" -ForegroundColor Red
    exit $LASTEXITCODE
}

# 2. Chạy Pagefind Indexing
Write-Host "[2/2] Run Pagefind indexing in /docs/pagefind..." -ForegroundColor Yellow
npx pagefind --site "docs" --output-subdir "pagefind"

if ($LASTEXITCODE -ne 0) {
    Write-Host "❌ Lỗi: Pagefind indexing fail!" -ForegroundColor Red
    exit $LASTEXITCODE
}

Write-Host "--- ✅ Finished! Blog ready push to GitHub ---" -ForegroundColor Green
