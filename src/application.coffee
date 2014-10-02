express = require 'express'
apiRoutes = require './routes/api'
webRoutes = require './routes/web'

app = express()

apiRoutes.register app
webRoutes.register app

app.set 'views', "./src/views"
app.set 'view engine', 'hbs'

server = app.listen 3000, () ->
    console.log 'Listening on port %d', server.address().port