FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json first (cache dependencies)
COPY package*.json ./

# Install only production dependencies
RUN npm ci --only=production

# Copy all source code
COPY . .

# Set environment variable for production
ENV NODE_ENV=production

# Expose container port
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
