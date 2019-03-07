FROM node:10.15-alpine

WORKDIR /home/node/app

COPY package.json yarn.lock ./

RUN yarn install && yarn run build

ENV HOST=0.0.0.0

USER node

CMD ["yarn", "run", "start"]
