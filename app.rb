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
    get '/friends' do
  @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
 
  erb :friends
end
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