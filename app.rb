require 'sinatra'

get '/' do
  "Hello world"
end

get '/secret' do
  "Shotgun"
end

get '/random-cat' do
  @names = ["Amigo", "Oscar", "Viking"].sample
  erb :index
end

get '/named-cat' do
  p params[:name]
  @names = params[:name]
  erb :index
end
