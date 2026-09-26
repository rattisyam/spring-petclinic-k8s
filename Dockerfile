# Use a specific version of OpenJDK
FROM eclipse-temurin:11-jre

# Set working directory
WORKDIR /petclinicapp

# Copy only the built JAR (from Maven target folder)
COPY target/*.jar app.jar

# Expose the default PetClinic port
EXPOSE 8080

# Run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
