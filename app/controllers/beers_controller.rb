class BeersController < ApplicationController

  def about
    render 'about'
  end

  def index
    @beer = Beer.all
  end

  def show

  end

end
