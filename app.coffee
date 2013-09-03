http = require 'http'
fs = require 'fs'
server = http.createServer (req, res) ->

	console.log "Got request"

  res.writeHead 200, {'Content-Type': 'text/plain'}

  response = fs.readFileSync './cow_say.txt'

  res.end response + '\n'


port = process.env.PORT || 9999

server.listen port

console.log 'Server listening on ' + port