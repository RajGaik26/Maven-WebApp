# Use the official Tomcat base image
FROM tomcat:10.0-jdk11-adoptopenjdk-hotspot

# Set environment variables
ENV APP_HOME /usr/local/tomcat

# Copy the .war file from the target directory to the Tomcat webapps folder
COPY target/*.war $APP_HOME/webapps/

# Expose port 8080 to the host machine
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
