# DUVA

Dockerized universal Vue App is a Nuxt boilerplate with other awesome stuff

<p align="center">
  <img src="./assets/duva-logo.png" title="DUVA">
</p>

## Running using docker

This boilerplate run using docker (development mo`de)

Prerequisite: Docker

```bash
# Set the node, cypress dependencies, install project dependencies and start dev server
docker-compose up
```

## Build Setup

```bash
# install dependencies
$ npm run install

# serve with hot reload at localhost:3000
$ npm run dev

# build for production and launch server
$ npm run build
$ npm start

# generate static project
$ npm run generate
```

## Running the tests

```bash
# run unit/integration tests
yarn test

# run e2e (headless mode) tests
yarn run e2e
```

## Built on Nuxt Js

- [x] Vue
- [x] vuetifyjs
- [x] Sass
- [x] Jest
- [x] PWA
- [x] Universal APP (Server side rendering)
- [x] Prettier / Lint / Husky
- [x] Cypress preconfig
- [x] Docker preconfig (Production mode)
- [ ] JavaScript Error Tracking - [Sentry](https://sentry.io/for/javascript/)
- [x] Follow the [angular commit conversion](https://gist.github.com/stephenparish/9941e89d80e2bc58a153)
- [ ] CircleCI preconfig

For detailed explanation on how things work, checkout [Nuxt.js docs](https://nuxtjs.org).
