# Use the official Tomcat base image with JDK 21
FROM tomcat:10.1-jdk21-temurin

# Set environment variables
ENV APP_HOME /usr/local/tomcat

# Copy the .war file from the target directory to the Tomcat webapps folder
COPY target/*.war $APP_HOME/webapps/

# Expose port 8080 to the host machine
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]

