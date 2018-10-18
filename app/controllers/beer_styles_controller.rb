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
    @beers = @beer_style.beers
    render template: 'beers/index'
  end
  # comment for now. this is kind of meant for the filter function but maybe i'm wrong because the filter
  # function is still working and displaying a beer of that style
  #this is the URL result, no bueno: http://localhost:3000/beers?utf8=%E2%9C%93&beer_style=3&commit=Filter

  private
  def load_id
    @beer_style = BeerStyle.find(params[:id])
  end
end
