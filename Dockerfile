# Use a Node.js base image
FROM node:18

# Set the working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy the rest of the application
COPY . .

# Expose port 5173
EXPOSE 5173

# Start the Vite dev server
CMD ["npm", "run", "dev"]
