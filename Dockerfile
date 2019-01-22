FROM node:latest
RUN mkdir -p /app
COPY . /app
WORKDIR /app

COPY package.json /app
COPY yarn.lock /app
RUN yarn install

ENV NODE_ENV=production

COPY . /app
RUN yarn run build

ENV HOST 0.0.0.0
EXPOSE 3000
CMD ["yarn", "start"]
