#!/bin/bash
# shellcheck disable=SC2164
cd /home/ubuntu

# Update package list and install dependencies
sudo apt update -y
sudo apt install -y python3-venv python3-full git

# Clone the repository
git clone https://github.com/muddu007/python-mysql-db-proj-1

# Navigate to project directory
cd python-mysql-db-proj-1

# Create and activate virtual environment
python3 -m venv venv
source venv/bin/activate

# Upgrade pip and install requirements
pip install --upgrade pip setuptools wheel
pip install -r requirements.txt

# Run the application in background
echo 'Starting the application...'
nohup python -u app.py > app.log 2>&1 &

# Wait for application to start
echo 'Waiting for 30 seconds for the application to start...'
sleep 30

echo 'Application started successfully!'
