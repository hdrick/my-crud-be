FROM openjdk:17

# Copy the JAR package into the image
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} crud-application-0.0.1-SNAPSHOT.jar

EXPOSE 8088

ENTRYPOINT ["java","-jar","crud-application-0.0.1-SNAPSHOT.jar"]