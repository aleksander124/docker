# syntax=docker/dockerfile:1
FROM php:8.0-apache
COPY php/ /var/www/html
WORKDIR /var/www/html
RUN apt-get update && apt-get install -y \
		libfreetype6-dev \
		libjpeg62-turbo-dev \
		libpng-dev 
EXPOSE 80