# This Dockerfile is for the development environment

FROM node:latest

# Some dependencies for Cypress
RUN apt-get update
RUN apt-get install xvfb libgtk2.0-0 libnotify-dev libgconf-2-4 libnss3 libxss1 libasound2 -y

# Define folder in container
RUN mkdir -p /app
COPY . /app
WORKDIR /app

COPY package.json /app
COPY package-lock.json /app
RUN npm install

COPY . /app

ENV HOST 0.0.0.0
EXPOSE 3000
CMD ["npm", "run", "dev"]
