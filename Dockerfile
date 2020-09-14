# Add license

FROM node:14.10-alpine3.10

# install simple http server for serving static content
RUN npm install -g http-server

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
COPY npm-shrinkwrap.json /usr/src/app/

# Install all dependency packages to install node module
RUN apk add --update git openssh &&\
    apk --no-cache add --virtual native-deps \
    g++ gcc libgcc libstdc++ linux-headers make python && \
    npm ci --only=production && \
    apk del native-deps

# Bundle app source
#COPY dist/. /usr/src/app/dist/
COPY . .

# build app for production with minification
RUN npm run build
EXPOSE 8080
CMD [ "http-server", "dist" ]
