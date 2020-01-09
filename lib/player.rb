class Player
  attr_reader :name, :points

  def initialize(name)
    @name = name
    @points = 60
  end

  def receive_damage
    @points -= 10
  end

  def attack(player)
    player.receive_damage
  end

end
