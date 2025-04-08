FROM python:3.11.11-slim

# Set the working directory
WORKDIR /api_dir

# Copy the current directory contents into the container at /app
COPY . /api_dir

# Install any needed packages specified in requirements.txt
RUN pip install -r requirments.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable

# Run app.py when the container launches

CMD ["uvicorn", "app.main:app", "--host=0.0.0.0", "--port=80"]