Simple docker-compose config (used alpine images)

Services:
1. nginx
2. php-fpm
3. php-cli (with composer)
4. postgres

If you use another version of image set env variables.
Example:
<pre>
POSTGRES_VERSION=15
PHP_IMAGE_VERSION=8.1
XDEBUG_VERSION=3.3
</pre>
