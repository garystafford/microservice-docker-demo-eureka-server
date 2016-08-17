###### Build:  
![https://travis-ci.org/garystafford/microservice-docker-demo-eureka-server.svg?branch=master](https://travis-ci.org/garystafford/microservice-docker-demo-eureka-server.svg?branch=master)

###### Docker Hub:  
[![](https://images.microbadger.com/badges/version/garystafford/microservice-docker-demo-eureka-server.svg)](http://microbadger.com/images/garystafford/microservice-docker-demo-eureka-server "Get your own version badge on microbadger.com")   [![](https://images.microbadger.com/badges/image/garystafford/microservice-docker-demo-eureka-server.svg)](http://microbadger.com/images/garystafford/microservice-docker-demo-eureka-server "Get your own image badge on microbadger.com")

# Spring Cloud Config Server

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

If you chose to set `push = false` within the `buildDocker` method,
then use the following command to push the image to DockerHub
```bash
docker push garystafford/eureka-server:latest
```

#### Links
http://localhost:8761
http://localhost:8761/eureka/apps

#### References
* https://github.com/Transmode/gradle-docker
* https://spring.io/blog/2015/01/20/microservice-registration-and-discovery-with-spring-cloud-and-netflix-s-eureka
