#!/bin/bash

# Change to the project directory
cd /home/alej/Documentos/Tarea_Node

# Check if there are changes in the deployment branch and if so, deploy the changes
if [ -n "$(git diff --name-only origin/Deployment)" ]; then
  git pull origin Deployment
  echo "Restarting server."
  systemctl restart hello_world.service
fi

