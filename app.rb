require "sinatra"
require "sinatra/reloader" if development?

get '/' do
  "Hello wonderful visiter"
end

get '/secret' do
  "I've got the key, I've got the secret"
end

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

post '/named-cat' do
  @name = params[:name]
  erb(:index)
end

get '/form' do
  erb(:catform)
end