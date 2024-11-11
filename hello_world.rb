require 'webrick'

server = WEBrick::HTTPServer.new(:Port => 8080)

server.mount_proc '/' do |req, res|
  res.body = 'Hola Mundo usando Ruby y Docker'
end

trap 'INT' do server.shutdown end

server.start