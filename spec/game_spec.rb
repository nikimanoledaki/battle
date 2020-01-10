require 'game'

describe Game do
  let(:player_1) { double("Player 1") }
  let(:player_2) { double("Player 2", receive_damage: true) }
  subject(:game) { Game.new(player_1, player_2) }

  describe '#attack' do
    it 'reduces the HP of Player 2 by 10' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end

  describe '#attacker' do
    it 'shows whose turn it is' do
      expect(game.attacker).to eq player_1
    end
  end

  describe '#victim' do
    it 'shows who is being attacked' do
      expect(game.victim).to eq player_2
    end
  end

  describe '#switches turn' do
    it 'switches turns' do
      game.attack(player_2)
      game.switch_turn
      expect(game.attacker).to eq player_2
    end
  end
end
