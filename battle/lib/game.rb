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
    player.receive_damage
  end

  def switch_turn
    new_player = nil
    @players.each do |player| 
      new_player = player if player != @active_player
    end
    @active_player = new_player
  end
end