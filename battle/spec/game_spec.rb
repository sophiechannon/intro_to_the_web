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
    expect(player_2).to receive(:receive_damage)
    allow(player_2).to receive(:points).and_return 90
    game.attack(player_2)
  end

  it "ininitally has player1 as active player" do
    expect(game.active_player).to eq player_1
  end

  it "switches active player to player2" do
    game.switch_turn
    expect(game.active_player).to eq player_2
  end

  it "returns the opponent" do
    expect(game.opponent(player_1)).to eq player_2
    expect(game.opponent(player_2)).to eq player_1
  end


end