init: docker-down docker-up composer-install

checks: composer-validate cs-check phpstan-check

docker-up:
	docker compose up -d

docker-build:
	docker compose up -d --build

docker-down:
	docker compose down --remove-orphans

composer-install:
	docker compose exec php-cli composer install

cs-fix:
	docker compose exec php-cli vendor/bin/php-cs-fixer fix

cs-check:
	docker compose exec php-cli vendor/bin/php-cs-fixer fix --diff

test:
	docker compose exec php-cli composer test

phpstan-check:
	docker compose exec php-cli vendor/bin/phpstan analyse

clear-cache:
	rm -rf var/cache/.phpstan var/cache/.phpunit.cache && rm var/cache/php-cs-fixer.cache

composer-validate:
	docker compose exec php-cli composer validate
