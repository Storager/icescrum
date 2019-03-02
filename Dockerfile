FROM openjdk:8-jre
CMD useradd icescrum -m -s /bin/bash -d /opt/icescrum
USER icescrum
EXPOSE 8080
ADD https://www.icescrum.com/downloads/v7/icescrum.war
CMD [ "/usr/bin/java", "-jar", "/opt/icescrum/icescrum.war" ]