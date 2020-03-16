class Application

@@items=[]

def call(env)
  resp=Rack::Response.new
  req=Rack::Request.new(env)

  if req.path.match(/items\/.+/)

    item_price=req.path.split("/items/").last
    item=@@items.find{|i| i.price==item_price}

  if item
    resp.write item.price
  end

  #elsif resp.write "Route not found"
  #  resp.status=404
  end
  resp.finish
end

end
