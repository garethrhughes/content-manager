module.exports =
  index: (req, res) ->
    res.sendfile "src/views/web/index.html"