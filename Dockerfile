FROM anapsix/alpine-java:8
WORKDIR /
ADD target/bankweb-service-0.0.1-SNAPSHOT.jar app.jar
RUN sh -c 'touch /app.jar'
EXPOSE 9031
ENTRYPOINT ["java","-jar","/app.jar"]
