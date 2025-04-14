# Use OpenJDK 8 (compatible with older Minecraft server versions)
FROM openjdk:8-jdk-alpine

# Set working directory
WORKDIR /app

# Copy everything into the container
COPY . .

# Ensure startup.sh is executable
RUN chmod +x startup.sh

# Expose common Minecraft ports (adjust if needed)
EXPOSE 25565 25577

# Run the startup script
CMD ["./startup.sh"]

