# 1. Use a compatible base Python image from Docker Hub
FROM python:3.10-slim

# 2. Set the working directory in the container to /app
WORKDIR /app

# 3. Copy all files from your project directory to the /app directory in the container
COPY . /app

# 4. Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5. Expose the port Flask will run on
EXPOSE 8080

# 6. Define the command to start the Flask app
CMD ["python", "app.py"]
