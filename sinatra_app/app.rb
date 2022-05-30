require "sinatra"
require "sinatra/reloader" if development?

get '/cat' do
  '<img src="https://i.imgur.com/jFaSxym.png" style ="border: 5px dashed red;">'
end