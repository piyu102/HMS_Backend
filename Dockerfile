FROM openjdk:11
COPY target/hospital-backend.jar hospital-backend.jar
ENTRYPOINT ["java","-jar","hospital-backend.jar"]
