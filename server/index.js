const fs = require('fs')
const path = require('path')
const express = require('express')
const { graphqlHTTP } = require('express-graphql')
const { buildSchema } = require('graphql')
const serverless = require('serverless-http')
const bodyParser = require('body-parser')

const schema = fs.readFileSync(path.resolve(__dirname, './queries/schema.graphql'), 'utf8')
const resolvers = require('./queries/resolvers')

const app = express()
app.use(bodyParser.json())
app.use(
  '/graphql',
  graphqlHTTP({
    schema: buildSchema(schema),
    rootValue: resolvers,
    graphiql: true
  })
)

module.exports.handler = serverless(app)
