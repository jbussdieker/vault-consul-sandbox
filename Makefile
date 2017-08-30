all: clean
	docker-compose up --build --force-recreate
clean:
	docker-compose rm -s -f
