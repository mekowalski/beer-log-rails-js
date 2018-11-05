class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    cookies[:email] = user.email

    redirect_to beers_path
    # how does a user log in???
    # HTTP is stateless protocol
    # every request is independent of another
    # you can't remember data in between requests
  end
end
