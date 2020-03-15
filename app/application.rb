class Application

@@item=[]

def call(env)
  resp=Rack::Response.new
  req=Rack::Request.new(env)

  if req.path.match("/items/")

    item_price=req.path("/items/").last
    @@items.find{|i| i.price==item_price}
    resp.write item.price
  elsif req.path=="/test/"
    resp.write "Route not found"
    resp.status=400
  end
  resp.finish
end

end
