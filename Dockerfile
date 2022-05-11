FROM openjdk:8
COPY ./target/hospital-backend.jar ./
WORKDIR ./
CMD ["java","-jar","hospital-backend.jar"]
