require 'game'

describe Game do
  let(:player1) { double(:player) }
  let(:player2) { double(:player) }
  let(:subject) {described_class.new(player1, player2)}
  it "should retrieve the first player" do
    expect(subject.player1).to eq(player1)
  end

  it "should retrieve the second player" do
    expect(subject.player2).to eq(player2)
  end

  it "should be able to attack" do
    expect(subject.player2).to receive(:receive_damage)

    subject.attack
  end
end
