class BeerStylesController < ApplicationController

  def index
    @beer_styles = BeerStyles.all
  end

end
