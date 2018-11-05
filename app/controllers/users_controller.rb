class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.email = params[:user][:email]
    if @user.save
      # raise params.inspect
      # log in a User
      redirect_to beers_path
    else
      render :new
    end
  end
end
