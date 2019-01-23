# This Dockerfile is for the production environment
FROM node:latest
RUN mkdir -p /app
COPY . /app
WORKDIR /app

COPY package.json /app
COPY package-lock.json /app
RUN npm install

ENV NODE_ENV=production

COPY . /app
RUN npm run build

ENV HOST 0.0.0.0
EXPOSE 3000
CMD ["npm", "run", "start"]
