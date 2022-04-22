FROM adoptopenjdk/openjdk11
#ENV APP_HOME=/usr/lib/
WORKDIR app
COPY ./src /app
COPY target/spring-boot-webshop-0.0.1-SNAPSHOT.jar app.jar
#ENTRYPOINT ["java", "-jar", "app.jar"]
CMD [ "java", "-jar", "./app.jar" ]