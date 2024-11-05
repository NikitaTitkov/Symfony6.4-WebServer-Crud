postgres:
	docker-compose up -d
	docker ps

migrations:
	bin/console doctrine:migrations:diff
	bin/console doctrine:migrations:migrate

make start:
	symfony server:start
