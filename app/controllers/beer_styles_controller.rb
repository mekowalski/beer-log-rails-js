class BeerStylesController < ApplicationController

  def index
    @beer_styles = BeerStyle.all
  end

end
