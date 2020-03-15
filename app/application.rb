class Application

@@items=[]

def call(env)
  resp=Rack::Response.new
  req=Rack::Request.new(env)

  if req.path.match(/items/)

    stuff=req.path.split("/items/").last

    item=@@items.find{|i| i.price==stuff}
    resp.write i.price
  elsif resp.write "Route not found"
    resp.status=404
  end
  resp.finish
end

end
