class Beer < ActiveRecord::Base
  validates :name, presence: true
  validates :description, presence: true
  validates :abv, presence: true
  validates :location, presence: true
end
