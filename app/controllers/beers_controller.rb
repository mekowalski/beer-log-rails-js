class BeersController < ApplicationController
  before_action :load_beer, only: [:show, :edit, :update]

  def about
    render 'about'
  end

  def index
    @beers = Beer.all
  end

  def show
  end

  def new
    @beer = Beer.new
  end

  def create
    @beer = Beer.new(beer_params)
    if @beer.save
      redirect_to @beer
      #can i redirect_to just @beer? conpanies con has redirection to @company,
      #not companies_path(@company), also much cleaner
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @beer.update(beer_params)
      redirect_to @beer
      #can i redirect_to just @beer? conpanies con has redirection to @company,
      #not companies_path(@company), also much cleaner
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
    params.require(:beer).permit(:name, :description, :abv, :location, :beer_style_id, :company_id)
  end

end
