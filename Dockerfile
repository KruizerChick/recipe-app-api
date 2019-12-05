FROM python:3.7-alpine
MAINTAINER KruizeTech

ENV PYTHONUNBUFFERED 1

# Install reqruirements 
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

# Create an /app directory and copy it to the docker image
RUN mkdir /app
WORKDIR /app
COPY ./app /app

# Create a user in the docker image and use that user
RUN adduser -D user
USER user

# Open the docker application, then open the terminal and type `docker build .` to create the file
