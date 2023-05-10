# using Node v10
FROM node:10

# Create app directory
WORKDIR /usr/src/lafs-api

# Install app dependencies
# A wildcard is used to copy both package.json and package-lock.json
COPY package*.json ./

RUN npm install
# for production builds
# RUN npm ci --only=production

# Bundle app source
COPY . .

# Expose port outside container
EXPOSE 3000
# Start application
CMD ["npm", "run", "start"]