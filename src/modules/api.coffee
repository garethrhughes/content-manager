apiLoader = require './api/loader'

module.exports =
  api: (req, res) ->
    api = apiLoader req.params.version
    if api
      action = api[req.params.action]

      if action
        return action(res, req.params.path)

    res.status(404).end()