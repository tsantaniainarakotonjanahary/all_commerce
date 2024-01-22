# Use an official Node runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /all_commerce

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the local code to the container
COPY . .

# Build the app
RUN npm run build

# Expose port 8080
EXPOSE 8080

# Define the command to run your app
CMD ["npm", "start"]
