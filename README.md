# recipe-app-api ![travis](https://travis-ci.org/KruizerChick/recipe-app-api.svg?branch=master)

Source code for the recipe application built in the **[Build a Backend REST API with Python and Django - Advanced](https://www.udemy.com/course/django-python-advanced/learn/lecture/12896152#questions/6050148)** course on Udemy.

---

## Useful Docker Commands


Action | Command
------ | -------
**Manipulating Docker Containers** |
_Start_ the Django app in the Docker container | `docker-compose up`
_Stop_ all containers in Docker | `docker-compose down`
**Running Commands** |
Run a command in the Docker container | `docker-compose run app sh -c "python ... "`
Remove container after running to keep things clean | `docker-compose run --rm app sh -c "python ..."`
**Testing** | 
Run tests and flake8 checks | `docker-compose run --rm app sh -c "python manage.py test && flake8"`

