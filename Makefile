docker-up:
	docker-compose up -d

docker-build:
	docker-compose up -d --build

docker-down:
	docker-compose down --remove-orphans

composer-install:
	docker-compose exec php-cli composer install
