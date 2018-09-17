class Beer < ActiveRecord::Base
  belongs_to :company
  belongs_to :beer_style

  validates :name, uniqueness: true, presence: true
  #because it's likely that no two beers will have the same name although, different breweries make produce
  #a beer with the same name. I haven't encountered this
  validates :description, presence: true
  validates :abv, presence: true
  validates :location, presence: true

  # def company_ids=(ids)
  #   ids.each do |id|
  #     beer = Beer.find(id)
  #     self.beers << beer
  #   end
  # end

  def company_attributes=(company)
    self.company = Company.find_or_create_by(name: company.name)
    self.company.update(company)
  end
  #
  # def company_name=(name)
  #   self.company = Company.find_or_create_by(name: name)
  #   @company_name = self.company.name
  # end
  #
  # def company_name
  #   @company_name
  # end
  #
  # def beer_style_name=(name)
  #   self.beer_style = BeerStyle.find_or_create_by(name: name)
  #   @beer_style_name = self.beer_style.name
  # end
  #
  # def beer_style_name
  #   @beer_style_name
  # end

end
