class BeerStyle < ApplicationRecord
  has_many :beers
  has_many :companies, through: :beers

  validates :name, presence: true

  def BeerStyle
    self.beer_style.name
  end
end
