FROM tomcat:9.0
COPY target/EmailListMVC.war /usr/local/tomcat/webapps/EmailListMVC.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
