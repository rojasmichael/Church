class VolunteersController < ApplicationController
  def new
    @volunteer = Volunteer.new
  end

  def create
      @volunteer = Volunteer.new(volunteer_params)

    if @volunteer.save
      redirect_to volunteer_path(@volunteer)
    else
      render :new
    end
  end

  def destroy
  end

  def edit
  end

  def show
    @volunteer = Volunteer.find(params[:id])
  end

  private

  def volunteer_params
    params.require(:volunteer).permit(:name, :address, :email, :password)
  end

end
