apiController = require '../modules/api'

module.exports =
  register: (app) ->
    app.get '/api', apiController.index
    app.get '/api/:version([0-9]+)/read/:id([0-9]+)', apiController.load
    app.get '/api/:version([0-9]+)/feed/:id([0-9]+)', apiController.feed

