# Specify the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the application code into the container
COPY . .

# Expose the port the application listens on
EXPOSE 3000

# Start the application
CMD ["node", "app.js"]
