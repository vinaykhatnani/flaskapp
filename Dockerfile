# Use official Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy app files
COPY . .

# Create upload folder inside container
RUN mkdir -p /data/uploads

# Expose port
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
