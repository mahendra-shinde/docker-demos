# Using base image of PHP-7 installed on "apache htttd"
# This base image is derived from "Ubuntu"
FROM php:7.0-apache

# Install any updates and clean the cache immediately
RUN apt-get update && \
    apt-get clean

# copy contents of local directory "files" into 
# deployment directory in container
COPY files /var/www/html/

