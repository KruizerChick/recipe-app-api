FROM python:3.7-alpine
LABEL maintainer="KruizerChick@gmail.com"

ENV PYTHONUNBUFFERED 1

# Install reqruirements 
COPY ./requirements.txt /requirements.txt
RUN apk add --update --no-cache postgresql-client
RUN apk add --update --no-cache --virtual .tmp-build-deps \
      gcc libc-dev linux-headers postgresql-dev
RUN pip install -r /requirements.txt
RUN apk del .tmp-build-deps

# Create an /app directory and copy it to the docker image
RUN mkdir /app
WORKDIR /app
COPY ./app /app

# Create a user in the docker image and use that user
RUN adduser -D user
USER user

# Open the docker application, then open the terminal and type `docker build .` to create the file
