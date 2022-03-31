FROM wordpress:php7.4
ENV TZ 'Europe/Prague'

# Get Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --2

# Get WP-CLI
RUN apt-get update && apt-get install less
RUN curl -O 'https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar'
RUN chmod +x /var/www/html/wp-cli.phar
RUN mv /var/www/html/wp-cli.phar /usr/local/bin/wp

ENV WP_CLI_ALLOW_ROOT 'true'