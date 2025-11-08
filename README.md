Simple sandbox with docker environment and basic php tools

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

You use tools:
1. PhpCsFixer
2. PhpStan
3. PhpUnit

Example with make commands:
<pre>
make phpstan-check
make test
</pre>
