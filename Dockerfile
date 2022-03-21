# This file is a template, and might need editing before it works on your project.
FROM node:14

WORKDIR /usr/src/app

ARG NODE_ENV
ENV NODE_ENV $NODE_ENV

COPY package.json /usr/src/app/
RUN yarn install

COPY . /usr/src/app

# replace this with your application's default port
EXPOSE 3000
CMD [ "yarn", "start" ]
