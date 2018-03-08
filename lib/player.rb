class Player
  attr_accessor :name, :health
  DEFAULT_HIT_POINTS=100
  def initialize(name)
    @name = name
    @health = DEFAULT_HIT_POINTS
  end

  def receive_damage
    @health -= 10
  end
end
