require "sinatra/base"

class Miniflow < Sinatra::Base
  get "/" do
    "Hello, world"
  end
end
