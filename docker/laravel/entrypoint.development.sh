#!/bin/bash
set -e

# composer install
php artisan key:generate
php artisan migrate
php artisan storage:link
exec supervisord -c /etc/supervisor/conf.d/supervisord.development.conf
e
