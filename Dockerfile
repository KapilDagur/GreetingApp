# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install FastAPI and Uvicorn in the container
RUN pip install --no-cache-dir fastapi[standard]

# Expose the port that FastAPI will run on
EXPOSE 8000

# Command to run the application using Uvicorn
CMD [ "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]