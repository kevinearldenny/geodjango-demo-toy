#!/usr/bin/env bash

docker-compose run web ./manage.py makemigrations --noinput
docker-compose run web ./manage.py migrate --noinput
