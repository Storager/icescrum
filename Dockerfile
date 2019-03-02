FROM openjdk:8-jre-alpine
EXPOSE 8080
ENV APP_DIR=/app
USER root
RUN adduser icescrum -s /bin/sh -h ${APP_DIR} -D
ADD --chown=icescrum:icescrum start.sh /
RUN chmod a+x /start.sh
USER icescrum
WORKDIR ${APP_DIR}
CMD [ "/bin/sh", "/start.sh" ]