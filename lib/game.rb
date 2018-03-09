class Game
  attr_reader :player_1_turn, :player1, :player2, :confirmation
  def initialize(player1, player2)
    @player_1_turn = true
    @player1 = player1
    @player2 = player2
    @confirmation = false
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

  def game_over
    player1.health == 0 || player2.health == 0
  end

  def switch_confirmation
    @confirmation = !@confirmation
  end

end
