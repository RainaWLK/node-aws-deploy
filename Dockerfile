FROM node:carbon-alpine

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

#VOLUME [ "/home/node/app" ]

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install aws-sdk
RUN npm install gulp
RUN npm install glob

RUN chmod -R 755 /usr/src/app/node_modules
#COPY . .

#CMD node index.js
ENTRYPOINT [ "/bin/sh", "-c" ]
