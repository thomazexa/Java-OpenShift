FROM maven:3.5.2-jdk-8-alpine AS MAVEN_TOOL_CHAIN
VOLUME /tmp

RUN mvn package
COPY target/APIJavaOpenShiftOKD-1.0-SNAPSHOT.jar /APIJavaOpenShiftOKD-1.0-SNAPSHOT.jar
EXPOSE 8080
CMD ["java", "-jar", "APIJavaOpenShiftOKD-1.0-SNAPSHOT.jar"]

