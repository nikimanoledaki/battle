class Player
  attr_reader :name, :points

  def initialize(name)
    @name = name
    @points = 60
  end

  def attack
    @points -= 10
  end

end
