require 'sinatra/base'
require './lib/game.rb'

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
    $game.switch_turn
    redirect '/play'
  end


get '/play'do
  @game = $game
  $game.switch_turn
  erb:play
end


get '/attack' do
  $game.attack
  @game = $game
  if @game.player1.hit_points == 0 || @game.player2.hit_points == 0
    redirect '/gameover'

  else

    erb :attack
  end

end

  get '/gameover' do
    @dead_player = $game.players.detect { |player| player.hit_points == 0 }
  erb :gameover
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
