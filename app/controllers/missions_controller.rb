class MissionsController < ApplicationController
  def index
    @missions = Mission.all
  end


  def new
    @missions = Mission.new
    

  end

  def create
      @missions = Mission.new(mission_params)

    if @missions.save
      redirect_to mission_path(@missions)
    else
      render :new   
    end
  end

  def destroy
  end

  def edit
    @missions = Mission.find(params[:id])

  end

  def update
    @missions = Mission.find(params[:id])
    if @missions.update(mission_params)
    flash[:notice] = 'Mission was successfully updated.' 
    redirect_to mission_path

  else 
    render "edit"

  end 
  end


  def add_vol
    @missions = Mission.find(params[:id])
     @volunteer = Volunteer.find_by(id: session[:volunteer_id])
     @missions.volunteers.push(@volunteer)
  
   
     redirect_to mission_path

  end

  def add_min
  @missions = Mission.find(params[:id])
  @ministry = Ministry.find_by(id: session[:ministry_id])
  @missions.ministries.push(@ministry)
  
   
     redirect_to mission_path
  end


  def show
     @missions = Mission.find(params[:id])
     @volunteer = Volunteer.find_by(id: session[:volunteer_id])
     @ministry = Ministry.find_by(id: session[:ministry_id])

  end

  private
  def mission_params

    params.require(:mission).permit(:name, :location, :description )

  end

end
