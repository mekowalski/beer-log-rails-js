class SessionsController < ApplicationController
  protect_from_forgery prepend:

  def new
  end

  def create
    session[:username] = params[:username]
    redirect_to '/beers'
  end
end
