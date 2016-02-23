class MissionsController < ApplicationController
  def new
  end

  def create
      @Mission = Mission.new(mission_params)

    if @mission.save
      redirect_to mission_path(@mission)
    else
      render :new
    end
  end

  def destroy
  end

  def edit
  end

  def show
  end

  private
  def mission_params
  end

end
