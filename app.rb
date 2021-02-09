require 'sinatra'

get '/' do
  'hello'
end
get '/secret' do
  'message again'
end
get '/random-cat' do
  @names = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end
get '/named-cat' do
  p params
  @names = params[:name]
  erb(:index)
end