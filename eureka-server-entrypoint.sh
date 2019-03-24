#!/bin/sh
while ! nc -z config-server 18081 ; do
    echo "Waiting for Config Server to initialize"
    sleep 2
done
java -jar /opt/eureka-server-1.0-SNAPSHOT.jar