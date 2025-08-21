# Stage 1: Build với Maven
FROM maven:3.9.4-eclipse-temurin-17 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# Stage 2: Chạy với Tomcat
FROM tomcat:9.0
# Copy file .war đã build sang Tomcat
COPY --from=build /app/target/EmailListMVC.war /usr/local/tomcat/webapps/EmailListMVC.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
