#!/bin/bash

PORT=${PORT:-3000}

echo "Creating interactive container for hhvm-php-fpm-fallback"
echo "PORT: $PORT"

docker run -i -t --rm -p 80:$PORT --name "hhvm-php-fpm-fallback" docker-hhvm-php-fpm-fallback /sbin/my_init -- bash -l
