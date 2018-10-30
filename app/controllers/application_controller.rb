class ApplicationController < ActionController::Base
  helper_method :current_user

  def home
    require_login
  end

  def current_user
    @current_user = (session[:username]) if session[:username]
    # raise @current_user.inspect => nil
    # raise session[:username].inspect => nil
  end
  # this is created but not sure if i'm writing this function correctly, it isn't working in the view

  private
  def require_login
    redirect_to controller: 'sessions', action: 'create' unless current_user
  end
end
