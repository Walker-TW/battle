class Game
  def initialize(player1,player2)
    @players = [player1, player2]
    @turns = [player2]
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def attack(player)
    player.take_damage
  end

  def whose_turn
    @turns.last != player1 ? player1 : player2
  end

  def switch_player
    @turns << whose_turn
  end

  def opponent
    whose_turn != player1 ? player1 : player2
  end
end