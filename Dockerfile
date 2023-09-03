FROM php:7
RUN apt-get update -y
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
WORKDIR /app
COPY . /app

CMD ["php", "-S", "0.0.0.0:8000"]
EXPOSE 8000
