require 'rails_helper'

describe Beer do
  it 'can be created' do
    beer = Beer.create!(name: 'Backside Stout', description: 'This stout is freaking delicious', abv: '6.20',
    location: 'Durango, CO')
    expect(beer).to be_valid
    expect(beer.beer_summary).to eq('Backside Stout - This stout is freaking delicious')
  end

end
