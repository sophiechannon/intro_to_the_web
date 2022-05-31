require 'player'

describe Player do 
  it "returns players name" do 
    player = Player.new("Aisha")
    expect(player.name).to eq "Aisha"
    expect(player.points).to eq 100
  end
end

puts hello