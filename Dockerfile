FROM openjdk:11-jdk-slim
VOLUME /tmp

COPY ./target/erp-produto-*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]