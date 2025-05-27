# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install any needed packages
RUN npm install

# --- CHANGE THESE LINES ---

# Copy ONLY the index.js directly into the /app directory
# Or if you have other root-level files besides package*.json, you can use:
# COPY . .
# but for clarity, if only index.js is there, it's better to be specific.
# Let's assume you only need to copy package*.json and index.js
# If you have other root-level files that should be copied, use 'COPY . .'
# For now, let's just ensure index.js gets copied correctly.
COPY index.js ./ # This copies index.js from your build context to /app/index.js

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Define the command to run your app
# It should now look for index.js directly in the /app directory
CMD ["node", "src/index.js"]
