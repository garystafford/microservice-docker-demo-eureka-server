![https://travis-ci.org/garystafford/microservice-docker-demo-widget.svg?branch=master](https://travis-ci.org/garystafford/microservice-docker-demo-widget.svg?branch=master)


# microservice-docker-demo-config

#### Introduction
One of a set of Java Spring Boot services, for an upcoming post on scaling Spring Boot microservices with the latest Spring and Docker features.

#### Technologies
* Java
* Spring Boot
* Gradle
* MongoDB
* Consul
* Spring Cloud Config Server (migrating to Consul)
* Spring Cloud Netflix Eureka
* Spring Boot with Docker

#### Build Service
Build and start service locally
```bash
./gradlew clean build && \
  java -jar -Dspring.profiles.active=local \
  build/libs/eureka-server-0.1.0.jar
```

#### Docker
Login to Docker Hub first
```bash
docker login
```

Build the Docker Image containing service jar. The profile will be used to run
 Docker container not create Docker Image
```bash
./gradlew clean build buildDocker
```

#### Links
http://localhost:8761
http://localhost:8761/eureka/apps

#### References
* https://github.com/Transmode/gradle-docker
* https://spring.io/blog/2015/01/20/microservice-registration-and-discovery-with-spring-cloud-and-netflix-s-eureka
