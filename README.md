# GeoDjango + Docker playground

This project was created to practice leveraging Docker for containerization of a spatially-enabled Django application.


### System requirements

- Docker

## Run instructions

1) `docker build .`
2) `docker-compose up -d --force-recreate`


### Migrations
```
docker-compose run web ./manage.py makemigrations
docker-compose run web ./manage.py migrate
```

### Loading data
1) `docker-compose run web ./manage.py shell`
```
from philly import load

load.run()
```