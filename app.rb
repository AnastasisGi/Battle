require 'sinatra/base'

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
    $player_1_name = Player.new(params[:player_1_name])
    $player_2_name = Player.new(params[:player_2_name])
    redirect '/slow'
  end


get '/slow'do
  @player_1_name = $player_1_name.name
  @player_2_name = $player_2_name.name
  erb:play
end





get '/attack' do
  @player_1_name = $player_1_name.name
  @player_2_name = $player_2_name.name
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
