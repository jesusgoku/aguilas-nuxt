FROM node:10.15-alpine

WORKDIR /usr/src/app

COPY package.json yarn.lock ./

RUN yarn install && yarn run build

CMD ["yarn", "run", "start"]
