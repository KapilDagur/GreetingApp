
---

# FastAPI Docker Application

This project demonstrates how to build, run, and manage a FastAPI application using Docker. It includes all the necessary steps to set up the app, deploy it in a container, and manage the lifecycle of the Docker image and container.

---

## Prerequisites

Before starting, ensure you have the following installed:

- **Docker**: [Download and install Docker](https://www.docker.com/get-started)
- **Python**: [Download and install Python](https://www.python.org/downloads/) (Optional for development, but required for local testing if Docker is not used).

---

## Project Setup

### 1. Clone the Repository

If you haven’t already, clone this repository or download the project files, which should contain the following:

- `main.py` (the FastAPI application)
- `Dockerfile` (the Docker image configuration)

---

## Docker Instructions

### 2. Building the Docker Image

In your terminal, navigate to the project directory where the `Dockerfile` is located, then run the following command to build the Docker image:

```bash
docker build -t fastapi-app .
```

- `-t fastapi-app`: This assigns the tag `fastapi-app` to your Docker image.
- `.`: Refers to the current directory (where the `Dockerfile` is located).

### 3. Running the Docker Container

After the image is built, run the FastAPI app inside a Docker container using the following command:

```bash
docker run -d -p 8000:8000 fastapi-app
```

- `-d`: Runs the container in detached mode (in the background).
- `-p 8000:8000`: Maps port 8000 on your local machine to port 8000 inside the Docker container (this is where FastAPI will be available).
- `fastapi-app`: The name of the Docker image you created in step 2.

Once the container is running, you can access the FastAPI application at:

- **Main endpoint**: [http://localhost:8000/](http://localhost:8000/)
- **Swagger Docs**: [http://localhost:8000/docs](http://localhost:8000/docs)

---

## Stopping and Removing the Docker Container

### 4. Stopping the Running Container

To stop the Docker container, you first need to find the container's ID or name. Run the following command to list all running containers:

```bash
docker ps
```

This will display something like:

```
CONTAINER ID   IMAGE           COMMAND                  CREATED         STATUS         PORTS                  NAMES
<container_id> fastapi-app     "uvicorn main:app --h…"  2 minutes ago   Up 2 minutes   0.0.0.0:8000->8000/tcp fastapi-container
```

To stop the container, use the `docker stop` command with the container ID or name:

```bash
docker stop <container_id_or_name>
```

Example:

```bash
docker stop fastapi-container
```

### 5. Removing the Docker Container

Once the container is stopped, you can remove it using:

```bash
docker rm <container_id_or_name>
```

Example:

```bash
docker rm fastapi-container
```

---

## Removing the Docker Image

### 6. Remove the Docker Image

If you no longer need the Docker image, you can remove it using the following command:

```bash
docker rmi fastapi-app
```

This command will remove the image tagged `fastapi-app` from your local machine.

---

## Cleaning Up Unused Resources

If you want to clean up unused containers, images, and volumes, you can use the following commands:

- **Remove all stopped containers**:
  ```bash
  docker container prune
  ```
- **Remove all unused images**:
  ```bash
  docker image prune -a
  ```
- **Remove unused volumes**:
  ```bash
  docker volume prune
  ```

---

## Additional Information

### Interactive API Documentation

FastAPI automatically generates interactive documentation for your API. You can access it at:

- **Swagger UI**: [http://localhost:8000/docs](http://localhost:8000/docs)
- **ReDoc**: [http://localhost:8000/redoc](http://localhost:8000/redoc)

---

## Troubleshooting

- **Port 8000 already in use**: If you encounter an error indicating that port 8000 is already in use, you can stop the process using that port or change the port in the `docker run` command:
  
  ```bash
  docker run -d -p 8001:8000 fastapi-app
  ```

  This would map the container's port 8000 to your host machine's port 8001 instead.

---

## Conclusion

You’ve successfully learned how to create, build, run, and manage a FastAPI application using Docker. By following the steps in this guide, you can easily deploy and manage your FastAPI applications within Docker containers. If you have any questions or need further assistance, feel free to ask! Happy coding! 🚀

---