require 'player'

describe Player do
  subject(:tom) {Player.new("Tom")}
  describe '#name' do
    it 'returns its own name' do
      expect(tom.name).to eq 'Tom'
    end
  end

  describe '#hit points' do
    it "Toms hit point's" do
      expect(tom.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'Attacks the player' do
      expect(tom.take_damage).to eq described_class::DEFAULT_HIT_POINTS - 10
    end
  end


  describe '#take_damage' do
    it 'lowers the players hit point' do
      expect { tom.take_damage }.to change { tom.hit_points }.by(-10)
    end
  end
end
