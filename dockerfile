FROM node:19.6-alpine

WORKDIR /usr/src/app

ENV NODE_ENV production

COPY package*.json ./

RUN npm install

USER node

COPY --chown=node:node ./src .

CMD ["node" , "index.js"]
