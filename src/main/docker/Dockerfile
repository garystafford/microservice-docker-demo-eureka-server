FROM java:8
VOLUME /tmp
ADD eureka-server-0.0.1-SNAPSHOT.jar /app.jar
RUN bash -c 'touch /app.jar'
EXPOSE 8761
ENTRYPOINT ["java","-Dspring.profiles.active=production","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
