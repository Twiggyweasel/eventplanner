class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
   helper_method :logged_in?, :is_admin?
  
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  def logged_in?
    true
  end
  
  def is_admin?
    true
  end
  
  def require_user
    if !logged_in?
      flash[:danger] = "You must be logged in to do that!"
      redirect_to :back
    end
  end
end
