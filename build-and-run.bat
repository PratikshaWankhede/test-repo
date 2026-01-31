@echo off
REM Build and Run Script
REM Stops old containers, removes old images, builds fresh, and runs

echo Stopping and removing old containers...
docker-compose down

echo Removing old images...
docker-compose down --rmi local

echo Building fresh images (no cache)...
docker-compose build --no-cache

echo Starting services...
docker-compose up -d

echo.
echo Done! Services are running.
echo API Gateway: http://localhost:3000
echo Frontend: http://localhost:4005
pause
