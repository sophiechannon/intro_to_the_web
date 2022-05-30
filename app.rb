require "sinatra"
require "sinatra/reloader" if development?

get '/cat' do
  erb(:index)
end