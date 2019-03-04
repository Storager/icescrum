#!/bin/sh -x
whoami
ls -la $APP_DIR
ls -la $APP_DIR/icescrum
ls -la $APP_DIR/icescrum/logs || mkdir $APP_DIR/icescrum/logs
ls -la $APP_DIR/icescrum/data || mkdir $APP_DIR/icescrum/data
ls -la /tmp
touch $APP_DIR/icescrum/logs/icescrum.logs
/usr/bin/java -jar $APP_DIR/icescrum.jar