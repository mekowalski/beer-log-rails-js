class SessionsController < ApplicationController
  require 'securerandom'

  def new
  end

  def create
    if params[:email]
      user = User.find_by(email: params[:email])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to root_path
      else
        render 'sessions/new'
      end
    elsif auth
      # raise params.inspect
      user = User.find_or_create_by(uid: auth['uid']) do |u|
        u.uid = auth['uid']
        u.email = auth['info']['email']
        u.password = SecureRandom.hex(8)
      end
      session[:user_id] = user.id
      redirect_to root_path
    else
      render 'sessions/new'
    end
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
