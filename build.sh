#!/bin/bash
set -e

echo "Installing backend dependencies..."
cd backend
npm install
cd ..

echo "Installing frontend dependencies..."
cd frontend
npm install --include=dev
npm run build
cd ..

echo "Build completed successfully!"
