from bryandollery/maven-repo as build

run git clone https://github.com/OZB96/project-v2/  && \
    cd project-v2/role-service/  && \
    mvn clean package

from adoptopenjdk/openjdk11:alpine

copy --from=build "/project-v2/role-service/target/role-service-1.0.0.jar" /

cmd ["java", "-jar", "role-service-1.0.0.jar"]

expose 80

