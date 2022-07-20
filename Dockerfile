# syntax=docker/dockerfile:1
FROM ubuntu:20.04
COPY ./app /app
RUN apt-get update && apt-get install -y\
    python-dev\
 && rm -rf /var/lib/apt/lists/*
CMD [ "python", "/app/app.py" ]