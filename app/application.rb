class Application

@@item=[]

def call(env)
  resp=Rack::Response.new
  req=Rack::Request.new(env)


  if req.path=="/test/"
    resp.write "Route not found"
    resp.status=400
  elsif req.path.match("/items/")

    item_price=req.path("/items/").last
    @@items.find{|i| i.price==item_price}
    resp.write item.price
  end
  resp.finish
end

end



end
