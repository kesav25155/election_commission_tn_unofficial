# Use an official PHP runtime as a parent image
FROM php:7.4-apache

# Set the working directory in the container
WORKDIR /var/www/html

# Copy the current directory contents into the container at /var/www/html
COPY . .

# Install PHP extensions if needed
RUN docker-php-ext-install pdo pdo_pgsql

# Expose port 80 to the outside world
EXPOSE 80

# Command to run upon container startup
CMD ["apache2-foreground"]
