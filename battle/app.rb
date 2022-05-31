require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player_one_name = params[:player_one_name]
    @player_two_name = params[:player_two_name]
    erb(:play)
  end

  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end