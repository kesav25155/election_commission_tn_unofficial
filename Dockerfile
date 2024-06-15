# Use an official PHP runtime as a parent image
FROM php:7.4-apache

# Set the working directory in the container
WORKDIR /var/www/html

# Copy the current directory contents into the container at /var/www/html
COPY . .

# Install system dependencies
RUN apt-get update && \
    apt-get install -y libpq-dev && \
    docker-php-ext-install pdo pdo_mysql pdo_pgsql && \
    rm -rf /var/lib/apt/lists/*

# Expose port 80 to the outside world
EXPOSE 80

# Command to run upon container startup
CMD ["apache2-foreground"]
