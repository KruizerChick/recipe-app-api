# recipe-app-api ![travis](https://travis-ci.org/KruizerChick/recipe-app-api.svg?branch=master)
Recipe app api source code.

## Docker Commands

Start the container

    docker-compose up


## Testing

Run tests using the following code:

    docker-compose run app sh -c "python manage.py test && flake8"

