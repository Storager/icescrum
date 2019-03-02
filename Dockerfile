FROM openjdk:8-jre
EXPOSE 8080
RUN useradd icescrum -m -s /bin/bash && \
    mkdir -p /app && \
    chown icescrum:icescrum  /app
ADD --chown=icescrum:icescrum https://www.icescrum.com/downloads/v7/icescrum.jar /app
#ADD --chown=icescrum:icescrum icescrum.jar /home/icescrum/
WORKDIR /app
USER icescrum
CMD [ "/usr/bin/java", "-jar", "/app/icescrum.jar" ]