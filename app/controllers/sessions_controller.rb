class SessionsController < ApplicationController
  def new
  end

  def create
    # raise params.inspect
    # raise params.inspect this is being hit with link_to google login!!!
    # user = User.find_by(email: params[:email])
    # if user && user.authenticate(params[:password])
    #   session[:user_id] = user.id
    #   redirect_to root_path
    # else
    #   render 'sessions/new'
    # end
    user = User.find_or_create_by(user_id auth['user_id']) do |u|
      u.email = auth['info']['email']
      u.password = auth['info']['password']
    end
    session[:user_id] = user.id
  end

  def destroy
    reset_session
    redirect_to login_path
  end

  private
  def auth
    request.env['omniauth.auth']
  end
end
