class Company < ApplicationRecord
  has_many :beers
  has_many :beer_styles, through: :beers

  validates :name, presence: true

  def beer_count
    self.beers.count
  end
end

#another suggestion also of
#Company has_many beer_styles
#Company has_many beers through beer_styles
#but this doesn't make sense to me
