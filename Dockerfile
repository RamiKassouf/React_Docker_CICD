FROM node:latest

WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the entire project to the working directory
COPY . .

# Build the React app
RUN npm run build

# Specify the port the app runs on
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]