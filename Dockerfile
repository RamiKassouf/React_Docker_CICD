#Stage 1
FROM node:18-alpine as builder
WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn install
COPY . .
RUN yarn build

# Specify the port the app runs on
EXPOSE 3000

# Command to run the application
CMD ["yarn", "start"]