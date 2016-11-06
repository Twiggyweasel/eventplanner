class AttendeesController < ApplicationController
   
   def new
      @event = Event.find(params[:event])
      @teams = @event.teams
      @attendee = Attendee.new 
   end
   
   def create 
      @event = Event.find(params[:attendee][:team_id])
      @attendee = Attendee.new(attendee_params)

    respond_to do |format|
      if @attendee.save
        format.html { redirect_to @attendee.team.event, :flash => { :success => 'You have successfully registered for this event!' } }
        format.json { render :show, status: :created, location: @attendee.team.event }
      else
        format.html { render :new }
        format.json { render json: @attendee.errors, status: :unprocessable_entity }
      end
    end
   end
    
    private 
    
        def attendee_params
           params.require(:attendee).permit(:id, :name, :entry_fee, :team_id) 
        end
end