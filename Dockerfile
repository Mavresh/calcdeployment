
# Use a lightweight Python base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file to the container
COPY requirements.txt requirements.txt

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the app code to the container
COPY . .

# Expose the port Flask will run on (5001)
EXPOSE 5001

# Command to run the app
CMD ["python", "index.py"]
