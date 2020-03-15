class Application

@@item=[]

def call(env)
  resp=Rack::Response.new
  req=Rack::Request.new(env)


  if req,path=="items/"
    @@items.each do |item|
    resp.write "#{item.price}\n"
  else reg.path=="/test"
    resp.write "Item not found"
    resp.statu=400
  end
  resp.finish
end


end
