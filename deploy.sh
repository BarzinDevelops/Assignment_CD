#!/bin/bash

REPO_PATH="/home/github/Assignment_CD"  # Adjust this path to your repository location

SSH_PRIVATE_KEY="$HOME/.ssh/DigitalOcean_ssh_barrybuntu/id_rsa"

echo "Deploying to VPS..."


# SSH into VPS and update code. Use known_hosts file to verify the host key
ssh -o StrictHostKeyChecking=yes -o UserKnownHostsFile=$HOME/.ssh/known_hosts -i "$SSH_PRIVATE_KEY" root@165.22.89.227 "cd $REPO_PATH && git pull origin main"
