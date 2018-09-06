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

  it "shows the name on the show page in an h1 tag" do
    visit "beers/#{@beer.id}"
    expect(page).to have_css("h1", text: "Backside Stout")
  end

  it "shows the description on the show page in a p tag" do
    visit "beers/#{@beer.id}"
    expect(page).to have_css("p", text: "This stout is freaking delicious")
  end
end
