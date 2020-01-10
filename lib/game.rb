class Game
  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @players = [@player_1, @player_2]
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def attack(player = @victim)
    player.receive_damage
  end

  def switch_turn
    @players.rotate!
  end

  def attacker
    @attacker = @players.first
  end

  def victim
    @victim = @players.last
  end

  def lost?
    @player_1.points == 0 || @player_2.points == 0
  end
end
