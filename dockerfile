FROM openjdk
COPY target/*.war application.war
EXPOSE 8090
ENTRYPOINT ["java","-war","application.war"]
