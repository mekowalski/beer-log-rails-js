class BeersController < ApplicationController

  def about
    render 'about'
  end

  def index
    @beer = Beer.all
  end

  def show
    @beer = Beer.find(params[:id])
  end

end
