require 'sinatra'

get '/' do
  "Hello, World!"
end

get '/blah' do
  "Walla"
end


get '/about' do
  "Im awesome"
end

get '/hello/:name' do
  "Hello there, #{params[:name]}."
end

get '/hello/:name/:city' do
  "Hey there #{params[:name]} from #{params[:city]}."
end

get '/more/*' do
  params[:splat]
end

get '/cruel' do
  erb :cruel
end

post '/cruel' do
  "You said '#{params[:message]}'"
end
get '/secret' do
  erb :secret
end

post '/secret' do
  params[:secret].reverse
end

not_found do
  halt 404, 'page not found'
end

