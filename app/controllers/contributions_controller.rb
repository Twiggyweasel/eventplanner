class ContributionsController < ApplicationController
   
   def index
       
   end
   
   def new
      @event = Event.find(params[:event])
      @contribution = Contribution.new
   end
   
   def create
   @event = Event.find(params[:contribution][:event_id])
   @contribution = Contribution.new(contribution_params)

    respond_to do |format|
      if @contribution.save
        format.html { redirect_to @contribution.event, :flash => { :success => 'Thank you for your contribution it has been successfully Processed!' } }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @contribution.errors, status: :unprocessable_entity }
      end
    end
   end
   
   private
      def contribution_params
         params.require(:contribution).permit(:amount, :comment, :event_id, :paid)
      end
end