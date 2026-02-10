# Use Java 17
FROM eclipse-temurin:17-jdk

WORKDIR /app

# Copy Maven wrapper & config
COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .

# Fix permission
RUN chmod +x mvnw

# Download dependencies
RUN ./mvnw dependency:go-offline

# Copy source code
COPY src src

# Build the jar
RUN ./mvnw clean package -DskipTests

# Copy the built jar to app.jar
RUN cp target/*.jar app.jar

# Expose Render port
EXPOSE 8080

# Run the app
CMD ["java", "-jar", "app.jar"]
