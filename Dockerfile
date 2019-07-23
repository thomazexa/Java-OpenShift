FROM maven:3.5.2-jdk-8-alpine AS MAVEN_TOOL_CHAIN
COPY pom.xml /tmp/
COPY Dockerfile /tmp/
COPY src /tmp/src/
WORKDIR /tmp/
RUN mvn package
CMD ["java", "-jar", "target/APIJavaOpenShiftOKD-1.0-SNAPSHOT.jar"]
