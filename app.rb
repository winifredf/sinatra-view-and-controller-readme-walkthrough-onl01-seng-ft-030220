require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    "Hello World"
  end
  
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    erb :reversed
  end

  get '/friends' do
    @friends = ["Emily Wilding Davison", ""]
  
    # Write your code here!

  end
  
  post '/reverse' do
    original_string = params["string"]
    @reversed_string = original_string.reverse
 
  erb :reversed
  end
end