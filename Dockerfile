# Use an official openjdk runtime as a parent image
FROM azul/zulu-openjdk-alpine:11.0.17

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Build the app
RUN ./mvnw clean install

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java","-jar","target/my-spring-boot-app-0.1.0.jar"]