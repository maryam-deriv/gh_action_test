# Simple Dockerfile
FROM alpine:latest

USER nobody

# Set default command
CMD ["echo", "Hello from my Docker image!"]

