coffeecup = require 'coffeecup'
helpers = require 'coffeecup-helpers'
mongoose = require 'mongoose'

express = require 'express'
app = express.createServer()

app.register '.coffee', require('coffeecup').adapters.express
app.set 'view engine', 'coffee'

# Setup Static Files
app.use express.static(__dirname + '/public')

# Setup Assets
app.use require('connect-assets')()

app.set 'view options', hardcode: helpers

# App Routes
app.get '/', (req, resp) ->
  resp.render 'index.coffee', title: 'Your Title Here', hardcode: helpers

app.get '/pricing', (req, resp) ->
  resp.render 'pricing.coffee', title: 'Pricing Plans', hardcode: helpers

# Listen
app.listen 3000, -> console.log 'Listening on port 3000'
