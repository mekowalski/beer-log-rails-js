require 'rails_helper'

describe Beer do
  it 'can be created' do
    beer = Beer.create!(name: 'Backside Stout', description: 'this stout is freaking delicious', abv: '6.20',
    location: 'Durango, CO')
    expect(beer).to be_valid
  end

end
