FROM tomcat:9-jdk17
LABEL maintainer="surajjadhav6272@gmail.com"
RUN rm -rf /usr/local/tomcat/webapps/ROOT
COPY target/snapchat.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 9632
CMD ["catalina.sh", "run"]

    
