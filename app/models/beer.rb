class Beer < ActiveRecord::Base
  belongs_to :company
  belongs_to :beer_style

  validates :name, uniqueness: true, presence: true
  validates :description, presence: true
  validates :abv, presence: true
  validates :location, presence: true

  accepts_nested_attributes_for :company, reject_if: :all_blank
  accepts_nested_attributes_for :beer_style, reject_if: :all_blank
end

# this is already a join table created kind of by accident but works well and makes sense to me
# the beer already had the foreign keys of beer_style_id and company_id
# one of the ways a lesson had created a join table was with a model combo of modelA_modelB join table
# this didn't work with my app and example
