webController = require '../modules/web'

module.exports =
  register: (app) ->
    app.get '/', webController.index

