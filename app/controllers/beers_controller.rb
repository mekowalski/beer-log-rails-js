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
    Beer.create(name: params[:beer][:name], description: params[:beer][:description], abv: params[:beer][:abv], location: params[:beer][:location])
    redirect_to beers_path
  end

end
