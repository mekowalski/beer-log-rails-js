class BeerStylesController < ApplicationController

  def index
    @beer_styles = BeerStyle.all
  end

  def show
    @beer_style = BeerStyle.find(params[:id])
  end
  
end
