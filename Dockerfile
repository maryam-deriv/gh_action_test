# Simple Dockerfile
FROM alpine:latest

USER nobody
USER root
# Set default command
CMD ["echo", "Hello from my Docker image!"]

