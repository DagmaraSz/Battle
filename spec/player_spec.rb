require 'player'
describe Player do
  subject(:player) {described_class.new}
  it "returns the Player's name" do
    expect(player).to respond_to(:name)
  end

end
