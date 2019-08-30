FROM ubuntu:18.04
MAINTAINER Nilesh Mehta
RUN apt-get update -y && \
apt-get install -y python-pip python-dev 

# We copy just the requirements.txt first to leverage Docker cache 

COPY ./requirements.txt requirements.txt

RUN pip install -r requirements.txt 

RUN apt-get install apache2 -y
RUN service apache2 restart

EXPOSE 80