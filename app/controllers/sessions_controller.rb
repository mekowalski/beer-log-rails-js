class SessionsController < ApplicationController
  protect_from_forgery prepend:
  # before_action :require_login

  def create
    session[:username] = params[:username]
    redirect_to '/beers'
  end

  def destroy
    session.delete :username
    redirect_to '/home'
  end

  # private
  # def require_login
  #   return head(:forbidden) unless session.include? :user_id
  # end
end
