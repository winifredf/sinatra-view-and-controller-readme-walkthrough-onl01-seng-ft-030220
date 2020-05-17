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
    erb :friends
  
    # Write your code here!

  end
  
  post '/reverse' do
  puts params
 
  erb :reversed
end
end