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

# database command
migrate:
	docker compose exec app python3.10 manage.py migrate
