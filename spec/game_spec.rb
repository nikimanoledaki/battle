require 'game'

describe Game do
  let(:player_1) { double("Player 1") }
  let(:player_2) { double("Player 2") }
  subject(:game) { Game.new(player_1, player_2) }

  describe '#attack' do
    it 'reduces the HP of Player 2 by 10' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end

end
