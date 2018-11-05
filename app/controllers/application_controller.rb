class ApplicationController < ActionController::Base
  # inheritance point where all controllers will utilize methods here
  protect_from_forgery with: :exception, prepend: true

  def authentication_required
    if !logged_in?
      redirect_to login_path
    end
  end

  def logged_in?
    !!current_user
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method #can call this in views with explicit direction of helper_method macro
end
