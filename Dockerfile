FROM ubuntu:18.04
MAINTAINER Nilesh Mehta
RUN apt-get updateRUN apt-get -y install software-properties-commonRUN add-apt-repository ppa:webupd8team/javaRUN apt-get -y update
RUN echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 boolean true" | debconf-set-selections RUN apt-get -y install oracle-java8-installer RUN apt-get -y install tomcat8RUN echo "JAVA_HOME=/usr/lib/jvm/java-8-oracle" >> /etc/default/tomcat8 EXPOSE 8080 CMD service tomcat8 start && tail -f /var/lib/tomcat8/logs/catalina.out