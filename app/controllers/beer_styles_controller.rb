class BeerStylesController < ApplicationController
  before_action :load_id, only: [:show, :beer, :beer_index]

  def index
    @beer_styles = BeerStyle.all
  end

  def show
  end

  def beer
    @beer = Beer.find(params[:beer_style_id])
    render template: 'beers/show'
  end

  def beer_index
    @beer_styles = BeerStyle.all
    @beers = @beer_style.beers
    render template: 'beers/index'
  end

  private
  def load_id
    @beer_style = BeerStyle.find(params[:id])
  end
end
