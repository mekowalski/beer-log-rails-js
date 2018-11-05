class SessionsController < ApplicationController
  # protect_from_forgery prepend:

  # def create
  #   if params[:username].blank?
  #     redirect_to '/login'
  #   else
  #     session[:username] = params[:username]
  #     # raise session[:username].inspect => returns 'mkowalski'
  #     redirect_to '/beers'
  #   end
  # end
  #
  # def destroy
  #   session.delete :username
  #   redirect_to '/'
  # end

  def new
  end

  def create
    user = User.find_by(params[:email])
    # how does a user log in???
    # HTTP is stateless protocol
    # every request is independent of another
    # you can't remember data in between requests
  end
end
