FROM ubuntu:18.04
MAINTAINER Gowerthanan Ravi

RUN apt-get update -y && \
apt-get install -y python-pip3 python-dev 

# We copy just the requirements.txt first to leverage Docker cache 
#COPY ./requirements.txt /app/requirements.txt

#WORKDIR /app

RUN pip3 install -r requirements.txt 

#COPY . /app

ENTRYPOINT [ "python" ] 

CMD [ "app.py" ]
