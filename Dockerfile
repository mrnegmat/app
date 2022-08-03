FROM tomcat:latest
RUN apt update
RUN apt install -y maven default-jdk
RUN mkdir -p /build
WORKDIR /build
COPY boxfuse-sample-java-war-hello/pom.xml /build
COPY boxfuse-sample-java-war-hello/src /build/src
RUN mvn clean package
RUN cp boxfuse-sample-java-war-hello/target/hello-1.0.war /var/lib/tomcat9/webapps/
EXPOSE 8080
