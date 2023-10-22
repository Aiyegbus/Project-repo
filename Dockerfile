# Use an official Nginx runtime as the base image
FROM node:14

# Expose the port that Nginx will listen on
EXPOSE 80

# Set the working directory for the application
WORKDIR /app

# Copy the package.json file into the container
COPY package.json /app/

# Install application dependencies using npm
RUN npm install

# Build the application (adjust the build command based on your app)
# RUN npm run build

# Start Nginx in the foreground
CMD ["npm", "start"]
