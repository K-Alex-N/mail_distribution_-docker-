FROM python:3.9.16-alpine3.16

COPY requirements.txt /temp/requirements.txt
COPY mailing /mailing
WORKDIR /mailing
EXPOSE 8000

RUN pip install -r /temp/requirements.txt
RUN adduser --disabled-password mailing-user

USER mailing-user