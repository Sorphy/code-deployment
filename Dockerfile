FROM node:16-alpine

WORKDIR /app

COPY package.json .

RUN yarn.lock .

COPY . .

RUN yarn 

RUN yarn build

ENV NODE_ENV production

EXPOSE 9000

CMD ["yarn", "start"]
