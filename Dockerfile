# Use an official alpine nodeJS image as the base image
FROM node:alpine

# Set working directory in the container
WORKDIR /app

# Copy the package.json files to the container
COPY package*.json ./

# Install only production nodeJS dependencies in the Docker Image
RUN npm install --only=production

# Copy the rest of the application code into the container
COPY . .

# Expose the app on port 3000
EXPOSE 3000

# Command to run the app
CMD ["npm", "start"]
