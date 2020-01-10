class Game
  attr_reader :player_1, :player_2, :players, :total, :victim, :attacker

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @players = [@player_1, @player_2]
    @total = 0
  end

  def attack(player = @victim)
    player.receive_damage
  end

  def switch_turn
    @total += 1
  end

  def attacker
    @attacker = @players[@total % 2]
  end

  def victim
    @victim = @players[(@total + 1) % 2]
  end
end
