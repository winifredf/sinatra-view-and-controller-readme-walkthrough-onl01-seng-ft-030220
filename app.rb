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
    
    <% @friends.each do |friend| %>
    <h2><%= friend %></h2>
<% end %>
  end
  
    # Write your code here!

 
  
  post '/reverse' do
    original_string = params["string"]
    @reversed_string = original_string.reverse
 
  erb :reversed
  end
end