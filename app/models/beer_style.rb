class BeerStyle < ApplicationRecord
  has_many :beers
  has_many :companies, through: :beers
  #could make sense: you can look up a beerstyle and see what companies brew this style of beer
  #thinking cap, can come back to this if i need the association

  validates :name, presence: true

  #will beerstyle also have  a self method like Beer and Company
  #i would assume so because when i create or update a beer with its attr, it will expect beerstyle relation
  def BeerStyle
    self.beer_style.name
  end
end
