describe Game do
  subject(:game) {described_class.new(player1,player2)}
  let(:player1) { double :player}
  let(:player2) { double :player}

  describe '#attack' do 
    it 'shanks the player' do
      expect(player2).to receive(:take_damage)
      game.attack(player2)
    end
  end

  describe '#whose_turn' do
    it 'player1 starts the game' do
      expect(Game.new(player1,player2).whose_turn).to be (player1)
    end
  end

  describe '#switch_turns' do
    it 'switch turns to player2' do
      game.switch_player
      expect(game.whose_turn).to be (player2)
    end
  end
end