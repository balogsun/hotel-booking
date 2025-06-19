# Use Node.js LTS version as the base image
FROM node:20-slim

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json 
COPY package*.json ./
#COPY package.json package-lock.json /app/

# Install project dependencies
RUN npm install

# Copy the entire project files to the container
#COPY . /app/
COPY . .

# Build the Next.js application for production
RUN npm run build

# Expose the port used by your Next.js app (if needed)
EXPOSE 3000

# Define the default command to start the Next.js app
CMD ["npm", "start"]
#CMD ["node", "server.js"]
