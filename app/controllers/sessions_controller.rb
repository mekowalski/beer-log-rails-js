class SessionsController < ApplicationController
  # protect_from_forgery prepend:

  def create
    if params[:username].blank?
      redirect_to '/login'
    else
      session[:username] = params[:username]
      # raise session[:username].inspect => returns 'mkowalski'
      redirect_to '/beers'
    end
  end

  def destroy
    session.delete :username
    redirect_to '/'
  end
end
