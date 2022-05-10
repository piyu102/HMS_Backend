FROM maven:3.6-jdk-12-alpine as build
WORKDIR /wrk
COPY pom.xml .
COPY src src
RUN mvn clean install

FROM adoptopenjdk/openjdk11:alpine-jre
COPY --from=build /wrk/target/hospital-management-server-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/hospital-management-server-0.0.1-SNAPSHOT.jar"]
