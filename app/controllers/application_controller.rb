class ApplicationController < ActionController::Base
  # inheritance point where all controllers will utilize methods here
  protect_from_forgery with: :exception, prepend: true

  def authentication_required
    if !logged_in?
      redirect_to login_path
    end
  end

  def logged_in?
    session[:user_id]
  end
end
