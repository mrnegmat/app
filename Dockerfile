FROM tomcat:latest
RUN apt update
RUN apt install -y maven default-jdk
RUN mvn clean package
RUN cp target/hello-1.0.war /usr/local/tomcat/webapps
