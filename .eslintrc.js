module.exports = {
  root: true,
  env: {
    browser: true,
    node: true,
    'cypress/globals': true,
  },
  parserOptions: {
    parser: 'babel-eslint',
  },
  extends: ['@nuxtjs', 'plugin:prettier/recommended'],
  plugins: ['prettier', 'cypress', 'chai-friendly'],
  // add your custom rules here
  rules: {
    'no-unused-expressions': 0,
    'chai-friendly/no-unused-expressions': 2,
  },
}
