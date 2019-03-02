FROM openjdk:8-jre
EXPOSE 8080
RUN useradd icescrum -m -s /bin/bash -d /opt/icescrum
USER icescrum
WORKDIR /opt/icescrum
ADD --chown=icescrum:icescrum https://www.icescrum.com/downloads/v7/icescrum.jar /opt
CMD [ "/usr/bin/java", "-jar", "/opt/icescrum.jar" ]