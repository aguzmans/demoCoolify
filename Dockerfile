# Use official Debian base image
FROM debian:bullseye-slim

# Install dependencies and NGINX
RUN apt-get update && \
    apt-get install -y --no-install-recommends nginx ca-certificates && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Copy default NGINX config (optional override)
# COPY nginx.conf /etc/nginx/nginx.conf

# Expose HTTP port
EXPOSE 80

# Start NGINX in foreground
CMD ["nginx", "-g", "daemon off;"]
