FROM openjdk:8
COPY ./target/hospital-backend.jar ./
WORKDIR ./
CMD ["java","-jar","hospital-backend.jar"]
EXPOSE 4000

# FROM maven:3.6-jdk-12-alpine as build
# WORKDIR /wrk
# COPY pom.xml .
# COPY src src
# RUN mvn clean install

# FROM adoptopenjdk/openjdk11:alpine-jre
# COPY --from=build /wrk/target/hospital-backend.jar hospital-backend.jar
# ENTRYPOINT ["java","-jar","/hospital-backend.jar"]

