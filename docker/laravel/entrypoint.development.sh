#!/bin/bash
set -e

# composer install --no-interaction --prefer-dist
php artisan key:generate
php artisan migrate
php artisan storage:link
exec supervisord -c /etc/supervisor/conf.d/supervisord.development.conf
e
