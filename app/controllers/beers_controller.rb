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
      #re-render :new template without throwing away the invalid @beer
    end
  end

  def edit
    @beer = Beer.find(params[:id])
  end

  def update
    @beer = Beer.find(params[:id])
    @beer.update(beer_params)

    redirect_to beer_path(@beer)
  end

  private
  def beer_params
    params.require(:beer).permit(:name, :description, :abv, :location)
  end

end
