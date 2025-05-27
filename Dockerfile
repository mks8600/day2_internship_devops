# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json from the build context (which is day2/src)
# into the /app directory in the container
COPY package*.json ./

# Install any needed packages
RUN npm install

# Copy all other application files from the build context (day2/src)
# into the /app directory in the container
COPY . .

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Define the command to run your app
# index.js is now directly in /app
CMD ["node", "index.js"]
