require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  it "returns players" do
    expect(game.player_1).to eq player_1 
    expect(game.player_2).to eq player_2 
  end

  it "attacks a player" do 
    expect(player_1).to receive(:receive_damage)
    allow(player_1).to receive(:points).and_return 90
    game.attack(player_1)
  end
end