require 'game'

describe Game do
  let(:game) {described_class.new(player1, player2)}
  let(:player1) {double}
  let(:player2) {double}
  it 'Manages attacks  ' do
    expect(player2).to receive(:receive_damage)
    game.attack
  end


end
