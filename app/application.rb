class Application

@@item=[]

def call(env)
  resp=Rack::Response.new
  req=Rack::Request.new(env)


  if @@items.each do |item|
    resp.write "#{item.price}\n"
  end
  resp.finish
end


end
