import * as Sentry from '@sentry/browser'
import Vue from 'vue'

const key = 'e68bf794d8d84fcf90e55f837a0bd1c1'
const project = '1378815'

// Should track errors only in production
if (process.env.NODE_ENV === 'production') {
  Sentry.init({
    /*
    ** You should setup your app into Sentry
    ** More info about Vue sentry setup:
    ** https://docs.sentry.io/platforms/javascript/vue/
    */
    dsn: `https://${key}@sentry.io/${project}`,
    integrations: [new Sentry.Integrations.Vue({ Vue })],
  })
}
