FROM ubuntu:latest
RUN apt update
RUN apt install openjdk-11-jre-headless -y
ADD https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.99/bin/apache-tomcat-8.5.99.tar.gz .
RUN tar -xvf apache-tomcat-8.5.99.tar.gz -C /opt
WORKDIR /opt/apache-tomcat-8.5.99
COPY student.war webapps/student.war
EXPOSE 8080
ENTRYPOINT [ "bin/catalina.sh" ]
CMD [ "run" ]