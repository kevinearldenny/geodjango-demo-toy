#!/usr/bin/env bash

docker-compose run web ./src/django/manage.py makemigrations --noinput
docker-compose run web ./src/django/manage.py migrate --noinput
