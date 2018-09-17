class Company < ApplicationRecord
  has_many :beers
  has_many :beer_styles, through: :beers
  accepts_nested_attributes_for :beers

  validates :name, presence: true

  def beer_count
    self.beers.count
  end
end
