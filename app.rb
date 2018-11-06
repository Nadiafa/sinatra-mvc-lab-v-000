require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input
  end 
  
  post '/' do
    @phrase_piglatinized = PigLatinizer.new(params[:user_phrase]).piglatinize
    erb :result
  end 
end
