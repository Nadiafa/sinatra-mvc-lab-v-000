require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input
  end 
  
  post '/piglatinize' do
    @phrase_piglatinized = PigLatinizer.new.piglatinize(params[:user_phrase])
    erb :result
  end 
end




  # post '/piglatinize' do
  #   pl = PigLatinizer.new
  #   @piglatin = pl.piglatinize(params[:user_phrase])
  #   erb :results
  # end