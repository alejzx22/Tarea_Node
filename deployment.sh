#!/bin/bash

cd /home/alej/Downloads/Tarea_Node-main

git fetch origin

# Check if there are changes in the deployment branch and if so, deploy the changes
if [ -n "$(git diff --name-only origin/Deployment)" ]; then
  git pull origin Deployment
  sudo systemctl restart hello_world.service
fi
