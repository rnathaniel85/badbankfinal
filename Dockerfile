FROM node:slim

MAINTAINER Richie <rich@mit.edu>

WORKDIR /app

# copy code, install npm dependencies
COPY index.js /app/index.js
COPY dal.js /app/dal.js
COPY package.json /app/package.json
RUN npm install
RUN npm install express
RUN npm install cors
RUN npm install mongodb