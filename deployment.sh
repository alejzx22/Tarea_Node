#!/bin/bash

# Check if there are changes in the deployment branch and if so, deploy the changes
if [ -n "$(git diff --name-only origin/Deployment)" ]; then
  git pull origin Deployment
  systemctl restart hello_world.service
fi
