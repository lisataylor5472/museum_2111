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
end
