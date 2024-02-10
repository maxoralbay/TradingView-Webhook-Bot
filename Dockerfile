FROM python:3.9-alpine
LABEL Auther="fabston"
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN apk add gcc python3-dev openssl-dev musl-dev libffi-dev &&\
    pip install --no-cache-dir -r requirements.txt

COPY . ./
EXPOSE 80
ENV FLASK_APP=main.py