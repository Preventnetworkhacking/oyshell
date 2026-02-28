# OyShell - Network Security Research Toolkit
# https://github.com/Preventnetworkhacking/oyshell

FROM python:3.11-slim

LABEL maintainer="Oystra <contact@oystra.ai>"
LABEL description="OyShell - Network Security Research Toolkit"

# Install system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    nmap \
    net-tools \
    iputils-ping \
    wireless-tools \
    aircrack-ng \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copy requirements first for better caching
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application
COPY . .

# Make scripts executable
RUN chmod +x main.py install.sh

# Set entrypoint
ENTRYPOINT ["python", "main.py"]
