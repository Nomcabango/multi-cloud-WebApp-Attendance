FROM tomcat:8-jdk8-corretto
# https://hub.docker.com/layers/library/tomcat/7.0.109-jdk8-openjdk/images/sha256-489823486120d076cb576640c5819c6fa54948f470b46c54f02b48f462eb2c23
MAINTAINER www.andres.nz
COPY target/AttendanceWebApp.war /usr/local/tomcat/webapps/
ADD conf/tomcat-users.xml /usr/local/tomcat/conf
LABEL maintainer="andres.nz"