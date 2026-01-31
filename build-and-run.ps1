# Build and Run Script
# Stops old containers, removes old images, builds fresh, and runs

Write-Host "Stopping and removing old containers..." -ForegroundColor Yellow
docker-compose down

Write-Host "Removing old images..." -ForegroundColor Yellow
docker-compose down --rmi local

Write-Host "Building fresh images (no cache)..." -ForegroundColor Cyan
docker-compose build --no-cache

Write-Host "Starting services..." -ForegroundColor Green
docker-compose up -d

Write-Host "`nDone! Services are running." -ForegroundColor Green
Write-Host "API Gateway: http://localhost:3000" -ForegroundColor White
Write-Host "Frontend: http://localhost:4005" -ForegroundColor White
