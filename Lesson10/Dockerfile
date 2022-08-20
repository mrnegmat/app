FROM tomcat:9.0.65-jdk11-temurin
RUN apt-get update && apt-get install -y maven git && \
    mkdir $CATALINA_HOME/build
WORKDIR $CATALINA_HOME/build
RUN git clone https://github.com/testgit4me/origon777.git  
RUN cd origon777 && mvn package 
RUN mv origon777/target/hello-1.0.war $CATALINA_HOME/webapps/hello-1.0.war

