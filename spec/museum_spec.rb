require './lib/exhibit'
require './lib/patron'
require './lib/museum'

RSpec.describe Museum do
  before(:each) do
    # @exhibit = Exhibit.new({name: "Gems and Minerals", cost: 0})
    # @patron_1 = Patron.new("Bob", 20)
    @dmns = Museum.new("Denver Museum of Nature and Science")
  end

  it 'exists' do
    expect(@dmns).to be_instance_of Museum
  end

  it 'has name' do
    expect(@dmns.name).to eq("Denver Museum of Nature and Science")
  end

  it 'has exhibits - yields empty array' do
    expect(@dmns.exhibits).to eq([])
  end

  it 'has exhibits - yields array full of exhibit objects' do
    gems_and_minerals = Exhibit.new({name: "Gems and Minerals", cost: 0})
    dead_sea_scrolls = Exhibit.new({name: "Dead Sea Scrolls", cost: 10})
    imax = Exhibit.new({name: "IMAX",cost: 15})
    dmns.add_exhibit(gems_and_minerals)
    dmns.add_exhibit(dead_sea_scrolls)
    dmns.add_exhibit(imax)
    expect(@dmns.exhibits).to eq([gems_and_minerals, dead_sea_scrolls, imax])
  end


end
