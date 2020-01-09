require 'player'

describe Player do
  subject(:name1) { Player.new("Player 1") }
  subject(:name2) { Player.new("Player 2") }

  describe '#name' do
    it 'returns the name' do
      expect(name1.name).to eq "Player 1"
    end    
  end

  describe '#receive_damage' do
    it 'reduced HP by 10' do
      expect{ subject.receive_damage }.to change { subject.points }.by -10
    end
  end

  describe '#attack' do
    it 'reduces the HP of Player 2 by 10' do
      expect(name2).to receive(:receive_damage)
      name1.attack(name2)
    end
  end

end
