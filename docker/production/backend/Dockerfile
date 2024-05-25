# Description: Dockerfile for the backend production environment
FROM node:20.11.1

# Environment variables
ARG PORT
ENV PORT=$PORT

ARG DATABASE_URL
ENV DATABASE_URL=$DATABASE_URL

# Expose the port
EXPOSE $PORT

# Create app directory
WORKDIR /app

# Copy package.json, tsconfig.json files and prisma folder
COPY package*.json ./
COPY tsconfig.json ./
COPY prisma ./prisma/

# Install app dependencies
RUN npm ci

# Copy the rest of the files
COPY . .

# Copy the entrypoint.sh file
COPY ../docker/production/backend/entrypoint.sh ./entrypoint.sh

# Make the entrypoint.sh file executable
RUN chmod +x ./entrypoint.sh

# Prisma migration
ENTRYPOINT [ "/app/entrypoint.sh" ]

# Build the app
RUN npm run build

# Run the app
CMD [ "npm", "run", "start:prod" ]
