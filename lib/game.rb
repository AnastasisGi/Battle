require_relative 'player'

class Game
attr_reader :player1, :player2, :players
  def initialize(player_one_name, player_two_name, player_class: Player)
    @player = player_class
    @player1 = @player.new(player_one_name)
    @player2 = @player.new(player_two_name)
    @players = [@player1,@player2]
    # @current_player = @player1
  end

  def attack
    @players.last.receive_damage


  end

  def current_player
    @players[0]
  end

  def opponent
    @players[1]
  end

  def switch_turn
        @players.reverse!
  end
end
