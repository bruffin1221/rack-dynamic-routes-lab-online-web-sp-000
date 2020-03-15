class Application

@@item=[]

def call(env)
  resp=Rack::Response.new
  req=Rack::Request.new(env)


  if req.path=="/test/"
    resp.write "Route not found"
    resp.status=400
  elsif req.path=="/items/"
    @@items.each do |item|
      resp.write "#{item.price}\n"
    end
    resp.finished
  end
end



end
