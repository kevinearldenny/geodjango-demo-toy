#!/usr/bin/env bash

docker-compose build
docker-compose run web ./manage.py makemigrations --noinput
docker-compose run web ./manage.py migrate --noinput
docker-compose run web ./manage.py load_data