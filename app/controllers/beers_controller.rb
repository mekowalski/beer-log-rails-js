class BeersController < ApplicationController

  def about
    render 'about'
  end

  def index
    @beers = Beer.all
  end

  def show
    @beer = Beer.find(params[:id])
  end

  def new
  end

  def create
    @beer = Beer.new
    @beer.name = params[:name]
    @beer.description = params[:description]
    @beer.abv = params[:abv]
    @beer.location = params[:location]
    @beer.save

    redirect_to beers_path(@beer)
  end

  def edit
    @beer = Beer.find(params[:id])
  end

  def update
  end

end
