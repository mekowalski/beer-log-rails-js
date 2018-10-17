class BeersController < ApplicationController
  before_action :load_beer, only: [:show, :edit, :update]

  def home
    render 'home'
  end

  def index
    @beer_styles = BeerStyle.all
    if !params[:beer_style].blank?
      @beers = Beer.by_beer_style(params[:beer_style])
    else
      @beers = Beer.all
    end
  end

  def show
  end

  def new
    @beer = Beer.new
    @beer.build_company
    @beer.build_beer_style
  end

  def create
    @beer = Beer.new(beer_params)
    if @beer.save
      redirect_to @beer
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @beer.update(beer_params)
      redirect_to @beer
    else
      render :edit
    end
  end

  def destroy
    load_beer.destroy
    redirect_to beers_path
  end

  private
  def load_beer
    @beer = Beer.find(params[:id])
  end

  def beer_params
    params.require(:beer).permit(:name, :description, :abv, :location, :company_id, :beer_style_id,
    company_attributes: [:name],
    beer_style_attributes: [:name])
  end

end
