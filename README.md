# GeoDjango + Docker playground

This project was created to practice leveraging Docker for containerization of a spatially-enabled Django application.


### System requirements

- Docker

## Run instructions

1) `docker-compose build`
2) `docker-compose up`


### Migrations
```
docker-compose run web ./manage.py makemigrations
docker-compose run web ./manage.py migrate
```

### Loading data
1) `docker-compose run web ./manage.py shell` -- We normally create ./scripts/console to standardize this pattern
```
from philly import load

load.run()
```
