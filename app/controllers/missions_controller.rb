class MissionsController < ApplicationController
  def new

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
  end

  def show
     @missions = Mission.find(params[:id])
  end

  private
  def mission_params

    params.require(:mission).permit(:name, :location, :description )

  end

end
