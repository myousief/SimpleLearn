FROM ubuntu:latest
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install openjdk-8-jdk wget
RUN mkdir /usr/local/tomcat
RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.65/bin/apache-tomcat-9.0.65.tar.gz -O /tmp/tomcat.tar.gz
RUN cd /tmp && tar xvfz tomcat.tar.gz
RUN mv /tmp/apache-tomcat-9.0.65/* /usr/local/tomcat/
EXPOSE 8090
CMD ["/usr/local/tomcat/bin/catalina.sh" "run"]
