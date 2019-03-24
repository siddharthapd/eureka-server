# Running image - docker run -p 18081:18081 -v /opt/javadev/workspace/config-repo:/config-repo config-server:latest

# Alpine Linux with OpenJDK JRE
FROM openjdk:8-jre-alpine
MAINTAINER siddharthap <sid.cse2013@gmail.com>

# VOLUME /config-repo
VOLUME /opt/javadev/logs
COPY /target/eureka-server-1.0-SNAPSHOT.jar /opt/eureka-server-1.0-SNAPSHOT.jar
COPY eureka-server-entrypoint.sh /opt/eureka-server-entrypoint.sh
RUN chmod 755 /opt/eureka-server-entrypoint.sh
EXPOSE 18082
