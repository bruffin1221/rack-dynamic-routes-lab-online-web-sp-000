class Application

@@item

def call(env)
  resp=Rack::Response.new
  req=Rack::Request.new(env)

  if req.path==="/test"
      resp.status=400
      resp.write "Route not found"
    else req.path=="/item"
       

  end
end


end
