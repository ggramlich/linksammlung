coffeecup = require 'coffeecup'
mongoose = require 'mongoose'

express = require 'express'
app = express.createServer()

app.register '.coffee', require('coffeecup').adapters.express
app.set 'view engine', 'coffee'

# Setup Static Files
app.use express.static(__dirname + '/public')

# Setup Assets
app.use require('connect-assets')()

# App Routes
app.get '/', (req, resp) ->
  resp.render 'index.coffee', title: 'Your Title Here'

# Listen
app.listen 3000, -> console.log 'Listening on port 3000'
