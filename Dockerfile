FROM openjdk:8-jre-alpine

ENV SPRING_OUTPUT_ANSI_ENABLED=ALWAYS \
    JHIPSTER_SLEEP=0

WORKDIR .
# add directly the war
ADD ./target/customer-data-service-0.0.1-SNAPSHOT.war /app.war

VOLUME /tmp
EXPOSE 8090
CMD echo "The application will start in ${JHIPSTER_SLEEP}s..." && \
    sleep ${JHIPSTER_SLEEP} && \
    java -Djava.security.egd=file:/dev/./urandom -jar /app.war
