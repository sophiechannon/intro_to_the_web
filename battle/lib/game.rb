class Game
  attr_accessor :player_1, :player_2, :active_player

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @active_player = player_1
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(player)
    player = @active_player
    opponent(@active_player).receive_damage
  end

  def switch_turn
    @active_player = opponent(@active_player)
  end

  def opponent(current)
    @players.reject {|player| player == current}.first
  end
end