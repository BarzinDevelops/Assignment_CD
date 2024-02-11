#!/bin/bash

SSH_PRIVATE_KEY="$HOME/.ssh/DigitalOcean_ssh_barrybuntu/id_rsa"

echo "Deploying to VPS..."

# SSH into VPS and update code
ssh -i "$SSH_PRIVATE_KEY" user@165.22.89.227 'cd /home/farm/ && git pull origin main'

