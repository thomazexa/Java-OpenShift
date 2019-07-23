FROM openjdk:8-jdk-alpine
VOLUME /tmp

RUN mvn package
COPY target/APIJavaOpenShiftOKD-1.0-SNAPSHOT.jar /APIJavaOpenShiftOKD-1.0-SNAPSHOT.jar
EXPOSE 8080
CMD ["java", "-jar", "APIJavaOpenShiftOKD-1.0-SNAPSHOT.jar"]

