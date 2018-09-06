require 'rails_helper'

describe 'navigate' do
  before do
    @beer = Beer.create(name: 'Backside Stout', description: 'This stout is freaking delicious', abv: 6.20,
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

  describe 'index page' do
    it "links to beer page" do
      second_beer = Beer.create(name: 'Draught Stout', description: 'This is another stout but from Guinness',
      abv: 4.2, location: 'Dublin, Ireland')
      visit beers_path
      expect(page).to have_link(second_beer.name, href: beer_path(second_beer))
    end
  end

  describe 'new beer' do
    it "ensures that the form route works with the /new action" do
      visit new_beer_path
      expect(page.status_code).to eq(200)
    end

    it "renders HTML in the /new template" do
      visit new_beer_path
      expect(page).to have_content('Add a New Beer')
    end

    # it "displays a new beer form that redirects to the index page, which then contains the submitted beer's name, description, abv and location" do
    #   visit new_beer_path
    #   fill_in 'beer_name', with: 'Backside Stout'
    #   fill_in 'beer_description', with: 'This stout is freaking delicious'
    #   fill_in 'beer_abv', with: '6.20'
    #   fill_in 'beer_location', with: 'Durango, CO'
    #
    #   click_on 'Submit Beer'
    #
    #   expect(page.current_path).to eq(beers_path)
    #   expect(page).to have_content('Backside Stout')
    #   expect(page).to have_content('This stout is freaking delicious')
    #   expect(page).to have_content('6.20')
    #   expect(page).to have_content('Durango, CO')
    # end
  end

end
