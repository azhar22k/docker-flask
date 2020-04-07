FROM python:3.8-alpine

LABEL maintainer="azhar.khan.78601@gmail.com"

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

EXPOSE 5000

COPY . .

RUN pip3 install -r requirements.txt --no-cache-dir

CMD python3 app.py