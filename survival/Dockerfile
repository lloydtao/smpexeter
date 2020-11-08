FROM openjdk:8-jre-slim

# Install dependencies
RUN apt-get update
RUN apt-get install -y --no-install-recommends wget ca-certificates

# Define mountable directory
VOLUME ["/minecraft"]

# Define working directory
WORKDIR /minecraft

# Copy server config files
COPY . .
RUN chmod +x start.sh

# Define entry point
ENTRYPOINT ["/bin/bash", "start.sh"]

# Expose Minecraft multiplayer port
EXPOSE 25565 25575
