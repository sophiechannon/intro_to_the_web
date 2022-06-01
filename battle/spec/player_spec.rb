require 'player'

describe Player do 
  it "returns players name" do 
    player = Player.new("Aisha")
    expect(player.name).to eq "Aisha"
    expect(player.points).to eq 100
  end

  it "looses points when attacked" do 
    player = Player.new("Aisha")
    player.receive_damage
    expect(player.points).to eq 90
  end
end