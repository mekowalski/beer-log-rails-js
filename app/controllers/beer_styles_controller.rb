class BeerStylesController < ApplicationController

  def beer_styles_home
    render :plain => 'Welcome to the Beer Styles page'
    #this is basically the index which is like the home page of Beer Styles. not needed
  end

  def index
  end

end
