require 'game'

describe Game do 
  it "attacks a player" do 
    player_1 = double :player, name: "Sophie"
    game = Game.new
    expect(player_1).to receive(:receive_damage)
    allow(player_1).to receive(:points).and_return 90
    game.attack(player_1)
  end
end