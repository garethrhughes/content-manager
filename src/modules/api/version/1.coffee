sendJson = (res, path, data) ->
  res.setHeader 'Content-Type', 'application/json'
  res.end JSON.stringify
    'api-version' : 1
    'request' : path
    'body': data

module.exports =
  load: (res, path) ->
    console.log 'load'
    sendJson res, path,
      path: path

  feed: (res, path) ->
    sendJson res, path,
      path: {}