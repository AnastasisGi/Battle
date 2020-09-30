require 'game'

describe Game do
  let(:player_class) {double("player class")}
  let(:player1) {double}
  let(:player2) {double}
  let(:game) {described_class.new("string", "string", player_class: player_class)}

  before do
    allow(player_class).to receive(:new).and_return(player1, player2)
  end

  it 'Manages attacks' do
    expect(player2).to receive(:receive_damage)
    game.attack
  end

  it 'creates player one' do
    expect(game.player1).to eq player1
  end

  it 'returns player two' do
    expect(game.player2).to eq player2
  end

end


# provide access to the details of the players
