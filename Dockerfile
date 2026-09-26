# Use a specific version of OpenJDK
FROM openjdk:11-jre-slim

# Set working directory
WORKDIR /petclinicapp

# Copy only the built JAR (from Maven target folder)
COPY target/*.jar app.jar

# Expose the default PetClinic port
EXPOSE 8080

# Run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
