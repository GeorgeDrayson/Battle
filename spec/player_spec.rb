require 'player'

describe Player do
  let(:subject) {described_class.new("Ragnar")}
  it 'Should return its name' do
    expect(subject.name).to eq "Ragnar"
  end
  it 'Should have health' do
    expect(subject.health).to eq(Player::DEFAULT_HIT_POINTS)
  end
  it 'Should be able to get hit' do
    subject.receive_damage
    expect(subject.health).to eq(Player::DEFAULT_HIT_POINTS - 10)
  end
end
