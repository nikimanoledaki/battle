class Player
  DEFAULT_POINTS = 60

  attr_reader :name, :points

  def initialize(name, points = DEFAULT_POINTS)
    @name = name
    @points = points
  end

  def receive_damage
    @points -= 10
  end

end
