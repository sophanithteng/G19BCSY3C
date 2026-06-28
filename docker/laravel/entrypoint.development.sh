#!/bin/bash
set -e

php artisan key:generate

echo "Waiting 20 seconds for MySQL to initialize..."
sleep 20

echo "Running migrations..."
php artisan migrate

echo "Starting Laravel server..."
php artisan serve --host=0.0.0.0 --port=8000
