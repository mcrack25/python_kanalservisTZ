# syntax=docker/dockerfile:1
FROM python:3.10.5-slim-buster
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY requirements.txt /code/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
CMD [ "python", "./main.py" ]
