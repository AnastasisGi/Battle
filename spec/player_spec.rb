require 'player'


describe Player do
  subject(:anastasis) {Player.new('Anastasis')}
  subject(:tasos) {Player.new('Tasos')}
describe '#name' do
  it 'returns the name  ' do
    expect(anastasis.name).to eq 'Anastasis'
  end
end

describe '#hit points  ' do
  it 'returns the hit points of the player' do
    expect(tasos.hit_points).to eq described_class::DEFAULT_LIFE
  end
end






end
