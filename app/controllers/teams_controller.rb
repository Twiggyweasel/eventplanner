class TeamsController < ApplicationController
   
   def new
      @event = Event.find(params[:event])  
      @team = Team.new 
      @team.attendees.build
   end
   
   def create 
      @event = Event.find(params[:team][:event_id])
      @team = Team.new(team_params)

    respond_to do |format|
      if @team.save
        format.html { redirect_to @team.event, :flash => { :success => 'Your Team has been created!' } }
        format.json { render :show, status: :created, location: @team.event }
      else
        format.html { render :new }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
   end
   
   
   private 
      def team_params
         params.require(:team).permit(:name, :member_limit, :event_id, attendees_attributes: [:id, :name, :entry_fee, :team_id])
      end
end