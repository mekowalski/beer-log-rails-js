class BeerStyle < ApplicationRecord
  has_many :beers
  #will beerstyles has_many :companies, through: :beers?
  #could make sense: you can look up a beerstyle and see what companies brew this style of beer
  #thinking cap, can come back to this if i need the association

  validates :name, presence: true
end
