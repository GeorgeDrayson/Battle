require 'game'

describe Game do
  let(:player1) { double(:player, health: 40) }
  let(:player2) { double(:player, health: 0) }
  let(:subject) {described_class.new(player1, player2)}

  describe '#new' do

    it "Should retrieve the first player" do
      expect(subject.player1).to eq(player1)
    end

    it "Should retrieve the second player" do
      expect(subject.player2).to eq(player2)
    end

  end

  describe '#attack' do
    it "Should be able to attack" do
      expect(subject.player2).to receive(:receive_damage)

      subject.attack
    end
  end

  describe '#switch' do

    it "Should be able to switch" do
      subject.switch
      expect(subject.player_1_turn).to eq false
    end

  end

  describe '#game_over' do

    it "Should call game over when one of them has 0HP" do
      expect(subject.game_over).to eq true
    end

  end

  describe '#confirmation' do

    it "Should say that the page isn't confirming" do
      expect(subject.confirmation).to eq false
    end

    it "Should say that the page is confirming" do
      subject.switch_confirmation

      expect(subject.confirmation).to eq true
    end


  end

end
