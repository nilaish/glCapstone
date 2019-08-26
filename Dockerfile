FROM ubuntu:18.04
MAINTAINER Gowerthanan Ravi
RUN apt-get update -y && \
apt-get install -y python-pip python-dev 

#RUN apt-get install apache2 -y
RUN apt-get install httpd -y

# We copy just the requirements.txt first to leverage Docker cache 
COPY ./requirements.txt requirements.txt

#WORKDIR /app

RUN pip install -r requirements.txt 

#COPY . /app

#ENTRYPOINT [ "python" ] 

#CMD [ "app.py" ]

#RUN service apache2 restart

EXPOSE 80
#EXPOSE 8080