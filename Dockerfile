FROM openjdk:8-jdk-alpine
LABEL maintainer="JangHwan Lee"
VOLUME /tmp
ADD ./build/libs/app.jar app.jar
EXPOSE 8761
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]