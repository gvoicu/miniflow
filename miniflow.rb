require "ostruct"

require "bundler/setup"
Bundler.require :default, ENV["RACK_ENV"]

class Miniflow < Sinatra::Base
  enable :static

  configure do
    set :questions, []

    question = OpenStruct.new
    question.score = 128
    question.title = "O intrebare de Ruby"
    question.category = "ruby"
    question.created_at = Time.now

    settings.questions << question
  end

  get "/" do
    @questions = settings.questions
    erb :index
  end
end
