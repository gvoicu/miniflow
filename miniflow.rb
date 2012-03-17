require "bundler/setup"
Bundler.require :default, ENV["RACK_ENV"]

class Miniflow < Sinatra::Base
  get "/" do
    "Hello, world"
  end
end
