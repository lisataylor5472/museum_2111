require './lib/exhibit'
require './lib/patron'

RSpec.describe Exhibit do
  before(:each) do
    @exhibit = Exhibit.new({name: "Gems and Minerals", cost: 0})
  end

  it 'exists' do
    expect(@exhibit).to be_instance_of Exhibit
  end

  it 'has a name' do
    expect(@exhibit.name).to eq ("Gems and Minerals")
  end

  it 'has a cost' do
    expect(@exhibit.cost).to eq (0)
  end
end

RSpec.describe Patron do
  before(:each) do
    @exhibit = Exhibit.new({name: "Gems and Minerals", cost: 0})
    @patron_1 = Patron.new("Bob", 20)
  end

  it 'exists' do
    expect(@patron).to be_instance_of Patron
  end
