FROM openjdk:19-slim

ARG JAR_FILE=build/libs/*SNAPSHOT.jar

COPY $JAR_FILE /service-discovery.jar

ENTRYPOINT exec java -jar /service-discovery.jar