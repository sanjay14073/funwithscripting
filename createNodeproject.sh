#!/bin/bash
# Script to initialize a Node application
# Step 1:Check if a project name is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <project_name>"
  exit 1
fi

# Step 2:Create the directory and navigate into it
mkdir "$1" && cd "$1"

# Step 3:Initialize a Node.js project
npm init -y

# Step 4:Create an index.js file
touch index.js

# Step 5:Provide feedback to the user and information of how to start their code
echo "// Start writing your code here. Type 'node index.js' to run your file." >> index.js
echo "Project initialized successfully in '$1' directory."
