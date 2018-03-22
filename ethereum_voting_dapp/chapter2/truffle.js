// Allows us to use ES6 in our migrations and tests.
require('babel-register')

module.exports = {
 networks: {
  development: {
   host: 'localhost',
   port: 8545,
   network_id: 'from: 0x430d7593c1f7b2ff1868ccab32fe644eab792d88',
   gas: 470000
  }
 }
}
