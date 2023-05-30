FROM openjdk
COPY target/*.jar application.jar
EXPOSE 8090
ENTRYPOINT ["java","-jar","application.jar"]
