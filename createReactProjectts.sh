#!/bin/bash
# Simple script for react+ts project
# Step 1:Check if a project name is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <project_name>"
  exit 1
fi

# Step 2:Create a new React project with TypeScript template
npx create-react-app "$1" --template typescript -y

# Step 3:Navigate into the project directory
cd "$1"

# Step 4:Install project dependencies
npm install

# Step 5:Start the React development server
npm start

# Step 6:Provide feedback to the user
echo "React project with TypeScript template initialized successfully in '$1' directory."