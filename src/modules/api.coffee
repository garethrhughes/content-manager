apiLoader = require './api/loader'

module.exports =
  index: (req, res) ->
    res.render 'api/index'

  api: (req, res) ->
    api = apiLoader req.params.version
    if api
      action = api[req.params.action]

      if action
        return action(res, req.params.path)

    res.status(404).end()