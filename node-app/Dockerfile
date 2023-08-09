# Stage 1: Install Node.js dependencies
FROM node:latest AS node-builder

WORKDIR /app

COPY package*.json ./
RUN npm install

# Stage 2: Final Node.js image
FROM node:latest

WORKDIR /app

# Copy Node.js application from builder stage
COPY --from=node-builder /app .

# Expose the application's port
EXPOSE 3000

# Define the command to start the Node.js application
CMD ["npm", "start"]

