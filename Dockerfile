FROM node:alpine
WORKDIR /usr/src/app
COPY package.json ./
RUN npm install
RUN npm install @inspector-apm/inspector-nodejs --save
COPY . .
EXPOSE 8080
CMD [ "node", "app.js" ]

