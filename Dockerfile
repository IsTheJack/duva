# Get the development Dockerfile at the link below
# https://gist.github.com/IsTheJack/4bd0dfea441ca0eb57ee84ec32fbfa71

# This Dockerfile is for the production environment
FROM node:latest
RUN mkdir -p /app
COPY . /app
WORKDIR /app

# Define folder in container
COPY package.json /app
COPY package-lock.json /app
RUN npm install

ENV NODE_ENV=production

COPY . /app
RUN npm run build

ENV HOST 0.0.0.0
EXPOSE 3000
CMD ["npm", "run", "start"]
