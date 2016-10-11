require 'player'
describe Player do
  subject(:player) {described_class.new("Bob")}
  subject(:player2) {described_class.new("Steve")}
  it "returns the Player's name" do
    expect(player.name).to eq "Bob"
  end

  it "has 50 HP points to begin with" do
    expect(player.hp).to eq 50
  end

  it "can attack a player" do
    expect(player).to respond_to(:attack)
  end

  it "can reduce its HP by 10" do
    expect{player.reduce_HP}.to change{player.hp}.by(-10)
  end

  it "can attack another player" do
    expect{player.attack(player2)}.to change{player2.hp}.by(-10)
  end

end
