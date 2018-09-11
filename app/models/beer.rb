class Beer < ActiveRecord::Base
  validates :name, uniqueness: true, presence: true
  #because it's likely that no two beers will have the same name although, different breweries make produce
  #a beer with the same name. I haven't encountered this
  validates :description, presence: true
  validates :abv, presence: true
  validates :location, presence: true
end
