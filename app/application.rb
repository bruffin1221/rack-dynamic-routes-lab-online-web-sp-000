class Application

@@items=[]

def call(env)
  resp=Rack::Response.new
  req=Rack::Request.new(env)

  if req.path.match(/items\/.+/)

    stuff=req.path.split("/item/").last
    item=@@items.find{|i| i.price==stuff}

  if stuff
    resp.write item.price
  end

  #elsif resp.write "Route not found"
  #  resp.status=404
  end
  resp.finish
end

end
