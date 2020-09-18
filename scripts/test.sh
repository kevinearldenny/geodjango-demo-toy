#!/usr/bin/env bash

docker-compose run web flake8 --ignore E501 .
