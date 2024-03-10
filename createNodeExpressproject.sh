#!/bin/bash
# A basic code that helps to initalise a simple node + express app.
# Step 1:Check if the directory is existing or not if not then procced to step 2
if [ -d "$1" ]; then
  echo "Directory '$1' already exists. Exiting."
  exit 1
fi

# Step 2:Create the directory and navigate into it
mkdir "$1" && cd "$1"

# Step 3:Initialize a Node.js project
npm init -y

# Step 4:Install Express
npm install express

# Step 5:Create an index.js file
touch index.js

# Step 6:index.js is added with initial code
echo "const express = require('express');

const app = express();

app.get('/', (req, res) => {
  res.status(200).json({ 'message': 'server working' });
});

const PORT = process.env.PORT || 3000;

app.listen(PORT, () => {
  console.log('Server started on port', PORT);
});

// Type 'node index.js' to start your server
" >> index.js
# Step 7:end
echo "Project initialized successfully in '$1' directory."