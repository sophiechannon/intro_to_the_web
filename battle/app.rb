require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get "/" do 
    erb :index
  end 

  get "/play" do 
    @game = $game
    erb :play
  end 

  post "/names" do 
    player_1 = Player.new(params[:name1])
    player_2 = Player.new(params[:name2])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end 

  get "/attack" do 
    @game = $game
    @game.attack(@game.player_2)
    erb :attack
  end 

  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end