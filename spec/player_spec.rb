require 'player'

describe Player do
  subject(:name1) { Player.new("Player 1") }

  describe '#name' do
    it 'returns the name' do
      expect(subject.name).to eq "Player 1"
    end    
  end

end
