apiController = require '../modules/api'

module.exports =
  register: (app) ->
    app.get '/api/:version([0-9]+)/:action/:path([^&]+)', apiController.api

