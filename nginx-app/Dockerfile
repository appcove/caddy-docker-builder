# Stage 1: Build the Nginx configuration file
FROM alpine:3.18 AS nginx-builder

COPY nginx.conf /etc/nginx/nginx.conf

# Stage 2: Final Nginx image
FROM nginx:latest

# Copy Nginx configuration from builder stage
COPY --from=nginx-builder /etc/nginx/nginx.conf /etc/nginx/nginx.conf

# Copy the web application files to the Nginx HTML root
COPY public /usr/share/nginx/html

# Expose the default Nginx port
EXPOSE 80

# Define the default command to start Nginx
CMD ["nginx", "-g", "daemon off;"]

