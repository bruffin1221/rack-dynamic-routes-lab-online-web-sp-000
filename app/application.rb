class Application

@@item=[]

def call(env)
  resp=Rack::Response.new
  req=Rack::Request.new(env)

  if req.path==="/test"
      resp.status=400
      resp.write "Route not found"
    elsif @@items.each do |item|
      puts item.price
    end
    resp.finish
  end
end

end
