class Beer < ActiveRecord::Base
  belongs_to :company
  belongs_to :beer_style

  validates :name, uniqueness: true, presence: true
  #because it's likely that no two beers will have the same name although, different breweries make produce
  #a beer with the same name. I haven't encountered this
  validates :description, presence: true
  validates :abv, presence: true
  validates :location, presence: true

  accepts_nested_attributes_for :company, reject_if: :all_blank
  #all_blank will not permeit creating a blank company
end
