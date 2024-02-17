# Continuous Deployment Assignment Report

## **Components of the Solution:**

### 1. GitHub Actions:

GitHub Actions allows me to automate the testing and deployment processes. My workflow is triggered on each push and runs a series of steps: 
- checking out my repository, 
- installing dependencies, 
- running tests,
- deploying to VPS

### 2. Bash Deployment Script:

The deployment script (deploy.sh) automates the process of updating the code on the VPS. It uses SSH to connect to the VPS, change into the directory where the Flask application is located, and pulls the latest code from the GitHub repository.

### 3. Digital Ocean VPS:

My Flask application is hosted on a Virtual Private Server (VPS) provided by Digital Ocean. The VPS serves as the production environment where my application is deployed. GitHub Actions, through the deployment script, connects to the VPS over SSH to update the code.

## **Problems Encountered and Solutions**:

### 1. SSH Key Access Error:

Initially, i encountered issues with SSH key access during the deployment step. The script was unable to locate the SSH key. I resolved this by using the default path for the SSH key in the deployment script. This ensures compatibility with the GitHub Actions runner environment.

### 2. Test Execution on GitHub Actions:

During the GitHub Actions workflow, there was an issue with the path to the requirements.txt file. I adjusted the path in the workflow to correctly install dependencies before running the tests.

### 3. Gunicorn and Nginx Configuration:

Encountered a situation where modifications on the VPS failed to reflect in the Flask app. Addressed the issue by verifying and adjusting configurations for both Nginx and Gunicorn. 

## **Note on the Assignment:**
This assignment provided valuable hands-on experience in setting up a continuous deployment pipeline using GitHub Actions and Digital Ocean. 
