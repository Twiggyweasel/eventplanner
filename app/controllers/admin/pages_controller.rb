class Admin::PagesController < ApplicationController
   layout 'admin'
   def show
      
      @org = Organization.find(params[:id])
      
   end
    
end