from bryandollery/maven-repo as build

WORKDIR /opt

run git clone https://github.com/OZB96/project-v2/  && \
    cd project-v2/person-service/  && \
    mvn clean package

from adoptopenjdk/openjdk11:alpine

copy --from=build "/opt/project-v2/person-service/target/person-service-1.0.0.jar" /

cmd ["java", "-jar", "person-service-1.0.0.jar"]

expose 80
