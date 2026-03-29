# Using lightweight Python image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy all files
COPY . .

# Install dependencies
RUN pip install -r requirements.txt

# Expose app port
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]