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
    @beer = Beer.new
  end

  def create
    @beer = Beer.new(beer_params)
    if @beer.valid?
      @beer.save
      redirect_to beers_path(@beer)
    else
      render :new
    end
  end

  def edit
    @beer = Beer.find(params[:id])
  end

  def update
    @beer = Beer.find(params[:id])
    if @beer.update(beer_params)
      redirect_to beer_path(@beer)
    else
      render :edit
    end
  end

  private
  def beer_params
    params.permit(:name, :description, :abv, :location)
  end
# .require(:beer)
end
