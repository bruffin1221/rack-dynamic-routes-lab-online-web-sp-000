class Application

@@item=[]

def call(env)
  resp=Rack::Response.new
  req=Rack::Request.new(env)

  if req.path==="/test"
    resp.status=400
    resp.write "Route not found"
  else @@items.each do |item|
    resp.write "#{item.price}\n"
  end
  resp.finish
end


end
