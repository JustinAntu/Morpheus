# Use the official Node.js image as the base image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /AIO/Morpheus

# Copy package.json and package-lock.json (if using npm) to the container
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the project files to the container
COPY . .

# Build the Astro project
RUN npm run build

# Expose the port the app will run on
EXPOSE 4321

# Start the Astro project (you can change it to your preferred start command)
CMD ["npm", "run", "start"]
