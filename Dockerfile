# Stage 1: Build bằng Maven
FROM maven:3.8.5-openjdk-17 AS build
WORKDIR /app

# Copy toàn bộ project vào container
COPY . .

# Build ra file .war
RUN mvn clean package -DskipTests

# Stage 2: Deploy với Tomcat
FROM tomcat:9.0
# Copy file .war từ bước build sang Tomcat
COPY --from=build /app/target/EmailListMVC-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/EmailListMVC.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
