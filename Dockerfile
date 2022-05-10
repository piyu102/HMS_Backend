FROM openjdk:11
COPY target/hospital-management-server-0.0.1-SNAPSHOT.jar hospital-management-server-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","hospital-management-server-0.0.1-SNAPSHOT.jar"]
