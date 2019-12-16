# recipe-app-api ![travis](https://travis-ci.org/KruizerChick/recipe-app-api.svg?branch=master)

Source code for the recipe application built in the **[Build a Backend REST API with Python and Django - Advanced](https://www.udemy.com/course/django-python-advanced/learn/lecture/12896152#questions/6050148)** course on Udemy.

---
## Current State

Tests are all passing OK.

API in browser is not working correctly... Doesn't seem to recognize the token 
being supplied in the ModHeader extension.

    HTTP 401 Unauthorized
    Allow: GET, POST, HEAD, OPTIONS
    Content-Type: application/json
    Vary: Accept
    WWW-Authenticate: Token

    {
        "detail": "Authentication credentials were not provided."
    }

---

## Useful Docker / Docker-Compose Commands

Command | Action
------- | ------
**Manipulating Docker Containers** |
`docker-compose up` | _Start_ the Django app in the Docker container
`docker-compose down` | _Stop_ all containers in Docker
`docker container ls` | _List_ all Docker containers
**Running Django Commands** |
`docker-compose run app sh -c "python ... "` | Run a command in the Docker container
`docker-compose run --rm app sh -c "python ..."` | Remove container after running to keep things clean
**Testing** | 
`docker-compose run --rm app sh -c "python manage.py test && flake8"` | Run tests and flake8 checks

More commands can be found here:
- [Docker CLI](https://docs.docker.com/engine/reference/commandline/docker/)
- [Docker Compose CLI](https://docs.docker.com/compose/reference/overview/)