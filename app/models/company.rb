class Company < ApplicationRecord
  has_many :beers
  has_many :beer_styles, through: :beers
  # accepts_nested_attributes_for :beers
  # should i use this macro to generate a setter method or just create the setter method of _attributes=()

  validates :name, presence: true

  def beer_count
    self.beers.count
  end
end
