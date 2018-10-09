class BeerStylesController < ApplicationController

  # def index
  #   @beer_styles = BeerStyle.all
  # end

  def beers_index
    @beer_style = BeerStyle.find(params[:id])
    @beers = BeerStyle.beers
    render template: 'beer_styles/index'
  end

  def show
    @beer_style = BeerStyle.find(params[:id])
  end

end
