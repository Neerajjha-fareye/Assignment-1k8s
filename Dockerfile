# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the Python script into the container
COPY hello_worlds.py /app

# Install Flask
RUN pip install Flask

# Expose the Flask port
EXPOSE 8080

# Run the Flask app when the container launches
CMD ["python", "hello_worlds.py"]
