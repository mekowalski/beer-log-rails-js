class Beer < ActiveRecord::Base
  belongs_to :company
  belongs_to :beer_style

  validates :name, uniqueness: true, presence: true
  validates :description, presence: true
  validates :abv, presence: true
  validates :location, presence: true

  accepts_nested_attributes_for :company, reject_if: :all_blank
  accepts_nested_attributes_for :beer_style, reject_if: :all_blank

  # step 1 of Correction
  def self.by_beer_style(beer_style_id)
    where(beer_style: beer_style_id)
  end
end
