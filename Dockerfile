FROM node:10
# Create app directory
WORKDIR /home/ubuntu/nodejs

# Install app dependencies
COPY package*.json ./

RUN npm install
# Bundle app source
COPY . .

EXPOSE 8081
CMD [ "node", "server.js"]
