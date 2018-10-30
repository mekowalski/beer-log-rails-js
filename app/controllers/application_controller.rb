class ApplicationController < ActionController::Base
  def home
    require_login
  end

  def current_user
    session[:username] if session[:username]
  end

  private
  def require_login
    redirect_to controller: 'sessions', action: 'create' unless current_user
  end
end
