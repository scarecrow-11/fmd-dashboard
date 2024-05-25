# Description: Dockerfile for the frontend development environment
FROM node:20.11.1

# Environment variables
ARG PORT
ENV PORT=$PORT

ARG API_BASE_URL
ENV API_BASE_URL=$API_BASE_URL

# Expose the port
EXPOSE $PORT

# Create app directory
WORKDIR /app

# Copy package.json and tsconfig.json files
COPY package*.json ./
COPY tsconfig.json ./

# Install app dependencies
RUN npm ci

# Copy the rest of the files
COPY . .

# Run the app
CMD [ "npm", "run", "dev" ]
