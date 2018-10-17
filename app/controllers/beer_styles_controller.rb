class BeerStylesController < ApplicationController

  def index
    @beer_styles = BeerStyle.all
  end

  def show
    @beer_style = BeerStyle.find(params[:id])
  end

  def beer
    @beer_style = BeerStyle.find(params[:id])
    @beer = Beer.find(params[:beer_style_id])
    render template: 'beers/show'
  end
  #this is the URL result, no bueno: http://localhost:3000/beers?utf8=%E2%9C%93&beer_style=3&commit=Filter
end
