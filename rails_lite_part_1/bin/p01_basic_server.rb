require 'rack'
require 'byebug'

app = Proc.new do |env|
    # debugger
  req = Rack::Request.new(env)
  res = Rack::Response.new
  res['Content-Type'] = 'text/html'
  res.write(env["REQUEST_URI"])
  res.finish
end

Rack::Server.start(
    app: app,
    Port: 3000
)