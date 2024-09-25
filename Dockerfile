# Use an OpenJDK 22 base image
FROM openjdk:22-jdk-slim

# Set the working directory
WORKDIR /app

# Install Maven
RUN apt-get update && apt-get install -y maven

# Copy the project files to the container
COPY . .

# Build the Maven project
RUN mvn clean install

# Expose port if the app needs it (optional)
# EXPOSE 8080

# Command to run the application
CMD ["mvn", "javafx:run"]
