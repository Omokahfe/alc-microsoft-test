# chosen docker image, contains node and npm
FROM node:alpine

MAINTAINER Ojagun Omokahfe <kahfea@gmail.com>

ENV APP_HOME /usr/user_manager/
ENV NODE_ENV "production"
ENV DB_HOST "mongodb"
ENV PORT "3000"

# create app directory
WORKDIR APP_HOME

# install app dependencies
COPY package*.json ./

# install app dependencies
RUN npm install

# bundle app source
COPY . .

# make the port open to listening
EXPOSE ${PORT}

# start application
CMD ["npm", "start"]
