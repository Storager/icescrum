FROM openjdk:8-jre-alpine
EXPOSE 8080
ENV APP_DIR=/app
ENV DATA_DIR=/data
USER root
WORKDIR ${APP_DIR}
RUN wget -c https://www.icescrum.com/downloads/v7/icescrum.jar -O $APP_DIR/icescrum.jar && \
    chmod a+x $APP_DIR/icescrum.jar
RUN adduser icescrum -s /bin/sh -h $APP_DIR/icescrum -D
ADD start.sh /
RUN chmod a+x /start.sh
USER icescrum
WORKDIR ${APP_DIR}/icescrum
RUN mkdir -p $APP_DIR/icescrum/logs && chmod 777 -R $APP_DIR/icescrum
#    chown icescrum:icescrum -R ${APP_DIR}/icescrum
# ADD icescrum.jar ${APP_DIR}/
ENTRYPOINT [ "/start.sh" ]