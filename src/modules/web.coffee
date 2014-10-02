module.exports =
  index: (req, res) ->
    console.log req
    res.render 'web/index'