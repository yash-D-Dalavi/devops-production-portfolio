#!/bin/bash
# Production Zero-Downtime Deployment Script

echo "Pulling latest code updates..."
git pull origin main

echo "Rebuilding and starting multi-container services..."
docker compose up -d --build --remove-orphans

echo "Verifying service health..."
docker compose ps

echo "Deployment finished successfully!"