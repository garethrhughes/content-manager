apiLoader = require './api/loader'

sendJson = (res, data) ->
  res.setHeader 'Content-Type', 'application/json'
  res.end JSON.stringify(data)

module.exports =
  index: (req, res) ->
    res.render 'api/index'

  load: (req, res) ->
    api = apiLoader req.params.version
    sendJson res, api.load(req.params.id)

  feed: (req, res) ->
    api = apiLoader req.params.version
    sendJson res, api.feed(req.params.id)