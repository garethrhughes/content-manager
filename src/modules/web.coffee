module.exports =
  index: (req, res) ->
    res.sendfile "src/views/index.html"