class SessionsController < ApplicationController
   
   def new
   
   end
   
   def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = "You are now logged in"
      redirect_to events_path
      
    else
      flash.now[:danger] = "Your email address or password doesn't match our records"
      render 'new'
    end
  end
  
  def destroy
    session[:user_id] = nil
    flash[:success] = "You have logged out"
    redirect_to root_path
  end
    
end