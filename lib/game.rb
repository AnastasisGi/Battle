class Game

  def initialize(player_one_name, player_two_name, player_class: Player)
    @player = player_class
    @player1 = @player.new(player_one_name)
    @player2 = @player.new(player_two_name)
    @players = [@player1,@player2]
  end

  def attack
    @players.last.receive_damage
  end

  def player_one
    @players[0]
  end

  def player_two
    @players[1]
  end

end
