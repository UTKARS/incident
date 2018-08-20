class IncidentsController < ApplicationController

  def new
    @incident = Incident.new
  end

  def detail
    @incident = Incident.new
    @incident_detail = @incident.build_incident_detail
    @user = @incident.build_user    
  end

  def index
    @incidents = Incident.all
  end

  def show
    @incident = Incident.find(params[:id])
    @incident_detail = @incident.incident_detail
    @user = @incident.user
  end


  # POST /incidents
  def create
    @incident = Incident.new(incident_params)
    respond_to do |format|
      if @incident.save
        format.html { redirect_to new_incident_path, notice: 'Incident was successfully created.' }
      else
        # debugger
        if params[:detail_form].present?
          format.html { render action: :detail}
        else
          format.html { render action: :new}
        end
      end
    end
  end

  private

    def incident_params
      unless params[:incident][:incident_detail_attributes].present?
        params.require(:incident).permit(:description, :image)
      else
        params.require(:incident).permit(:description, :image, :incident_detail_attributes => [:incident_id, :people_involved, :other_observers, :date_and_time, :location, :other_location, :type_of_incident => []], :user_attributes => [:name, :email, :role])
      end
    end
end
