require 'sinatra/base'
require 'game'

class Battle < Sinatra::Base
enable:sessions

  get '/' do
    # erb:index
    "Testing infrastructure working!"
  end


  get '/names' do
    erb(:index)
  end


  post '/names' do
    # $player_1 = Player.new(params[:player_1_name])
    # $player_2 = Player.new(params[:player_2_name])
    $game = Game.new(params[:player_1_name],params[:player_2_name])
    redirect '/slow'
  end


get '/slow'do
  @game = $game
  erb:play
end


get '/attack' do
  $game.attack
  @game = $game
  erb :attack
end





  #
  # get '/play' do
  #   @player_1_name = session[:player_1_name]
  #   @player_2_name = session[:player_2_name]
  #   erb :play
  # end
  #
  #
  # post '/names'do
  #   session[:player_1_name] = params[:player_1_name]
  #   session[:player_2_name] = params[:player_2_name]
  #     redirect '/play'
  # end


end
