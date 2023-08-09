# Stage 1: Install Python dependencies
FROM python:latest AS python-builder

WORKDIR /app

COPY requirements.txt ./
RUN pip install -r requirements.txt

# Stage 2: Final Python image
FROM python:latest

WORKDIR /app

# Copy Python application and installed dependencies from builder stage
COPY --from=python-builder /app .

# Expose the Flask application's port
EXPOSE 5000

# Define the command to start the Flask application
CMD ["python", "app.py"]

