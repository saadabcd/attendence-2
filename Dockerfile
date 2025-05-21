# Use PHP-Apache image
FROM php:8.2-apache

# Install MySQL extensions
RUN docker-php-ext-install pdo pdo_mysql

# Copy all files to Apache root
COPY . /var/www/html/

# Set permissions (adjust as needed)
RUN chown -R www-data:www-data /var/www/html