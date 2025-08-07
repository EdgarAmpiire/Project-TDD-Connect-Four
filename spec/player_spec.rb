require_relative '../lib/player'

describe Player do
  subject(:player) { described_class.new('Alice', 'X') }
  it 'Store the name' do
    expect(player.name).to eq('Alice')
  end

  it 'Stores the symbol' do
    expect(player.symbol).to eq('X')
  end
  
end