# recipe-app-api ![travis](https://travis-ci.org/KruizerChick/recipe-app-api.svg?branch=master)
Recipe app api source code.

## Docker Commands

Start the Django app in the Docker container:

    docker-compose up

Stop all containers in Docker:

    docker-compose down

Running a command line command in the Docker container:

    docker-compose run app sh -c "python ... "

Running a command line command, but removing the container afterwards to keep things clean:

    docker-compose run --rm app sh -c "python ..."


## Testing

Run tests using the following code:

    docker-compose run --rm app sh -c "python manage.py test && flake8"

