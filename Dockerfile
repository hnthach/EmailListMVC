# Stage 1: Build with Maven
FROM maven:3.8.7-eclipse-temurin-17 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# Stage 2: Run with Tomcat
FROM tomcat:9.0
COPY --from=build /app/target/EmailListMVC-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/EmailListMVC.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
