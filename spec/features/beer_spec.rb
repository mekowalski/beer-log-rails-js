require 'rails_helper'

describe 'navigate' do
  before do
    @beer = Beer.create(name: 'Backside Stout', description: 'This stout is freaking delicious', abv: '6.20',
    location: 'Durango, CO')
  end

  it "loads the show page" do
    visit "/beers/#{@beer.id}"
    expect(page.status_code).to eq(200)
  end
end
