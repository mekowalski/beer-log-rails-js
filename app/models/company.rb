class Company < ApplicationRecord
  has_many :beers
  has_many :beer_styles, through: :beers

  validates :name, presence: true
end
