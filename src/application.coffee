express = require 'express'

app = express();

app.get '/', (req, res) ->
	res.send 200

server = app.listen 3000, () ->
    console.log 'Listening on port %d', server.address().port