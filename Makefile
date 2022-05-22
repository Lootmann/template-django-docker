run:
	docker compose up -d

down:
	docker compose down

build:
	docker compose build

buildup:
	docker compose up --build

logs:
	docker compose logs -f

test:
	docker compose exec app python3.10 -m pytest -vv

verbose:
	docker compose exec app python3.10 -m pytest --durations=0

restart:
	docker compose restart

show_urls:
	docker compose exec app python3 manage.py show_urls

# database command
migrate:
	docker compose exec app python3.10 manage.py migrate

dump:
	docker compose exec app python3 manage.py dumpdata --format=yaml > ./dumps/dump.yml

loaddata:
	docker compose exec app python3 manage.py loaddata --format=yaml ./dumps/dump.yml
