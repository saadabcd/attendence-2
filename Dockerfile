# Use PHP-Apache image
FROM php:8.2-apache

# Install MySQL extensions
RUN docker-php-ext-install pdo pdo_mysql

# Copy ALL files to Apache's root
COPY . /var/www/html/

# Move assets to proper locations (CSS/JS/Fonts)
RUN mv /var/www/html/css /var/www/html/assets/css \
    && mv /var/www/html/js /var/www/html/assets/js \
    && mv /var/www/html/fonts /var/www/html/assets/fonts

# Set permissions
RUN chown -R www-data:www-data /var/www/html