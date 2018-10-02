class ApplicationController < ActionController::Base
  def about
    render 'beers/about'
  end
end
