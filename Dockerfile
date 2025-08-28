# Use a slim base image for a smaller footprint
FROM python:3.9.7-slim-buster

# Set the working directory inside the container
WORKDIR /app

# The following two steps are for build caching.
# First, copy only the requirements file to leverage Docker's build cache.
# The 'apt' command is placed here to group all system dependency installations
# into a single layer, which is more efficient.
# Note: The '-qq' flags are removed for better debugging if a problem occurs.
COPY requirements.txt .
RUN apt update \
    && apt install -y git wget pv jq python3-dev ffmpeg mediainfo \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install Python dependencies
RUN pip3 install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
# This layer is only invalidated if the application code changes,
# leaving the previous layers (system and python dependencies) cached.
COPY . .

# Define the command to run the application when the container starts
CMD ["python3", "main.py"]
