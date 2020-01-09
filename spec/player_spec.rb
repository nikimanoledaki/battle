require 'player'

describe Player do
  subject(:name1) { Player.new("Player 1") }

  describe '#name' do
    it 'returns the name' do
      expect(subject.name).to eq "Player 1"
    end    
  end

  describe '#attack' do
    it 'reduces the HP of Player 2 by 10' do
      expect{ subject.attack }.to change { subject.points }.by -10
    end
  end

end
