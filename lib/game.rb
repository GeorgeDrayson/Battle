class Game
  attr_reader :player_1_turn
  def initialize(player1, player2)
    @player_1_turn = true
    @players = [player1, player2]
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def attack
    if @player_1_turn
      player2.receive_damage
    else
      player1.receive_damage
    end
  end

  def switch
    @player_1_turn = !@player_1_turn
  end

end
