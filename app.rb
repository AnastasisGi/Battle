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
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    $game = Game.new($player_1,$player_2)
    redirect '/slow'
  end


get '/slow'do
  @player_1_name = $player_1.name
  @player_2_name = $player_2.name
  erb:play
end





get '/attack' do
  $game.attack

  @player_1_name = $player_1.name
  @player_2_name = $player_2.name
  @player_1_hp = $player_1.hit_points
  @player_2_hp = $player_2.hit_points

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
