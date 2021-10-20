const mysql = require('serverless-mysql')({
  config: {
    host: process.env.HOST,
    database: process.env.DATABASE,
    user: process.env.USER,
    password: process.env.PASSWORD
  }
})

module.exports = {
  characters: () => {
    return mysql.query('SELECT * FROM characters')
  }
}
