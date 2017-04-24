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

post '/named-cat' do
p params
  @names = params[:names]
  erb :index
end

get "/form" do
  erb :form
end
