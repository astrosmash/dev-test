FROM node:argon

RUN mkdir -p /usr/src/webapp
WORKDIR /usr/src/webapp

COPY package.json /usr/src/webapp
RUN npm install --save

COPY . /usr/src/webapp

EXPOSE 63380
CMD [ "npm", "--loglevel", "verbose", "start" ]
