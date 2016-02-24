class VolunteersController < ApplicationController
  def index
   @volunteer = Volunteer.find_by(id: session[:volunteer_id])
  end


  def new
    @volunteer = Volunteer.new
  end

  def create
      @volunteer = Volunteer.new(volunteer_params)

    if @volunteer.save

      redirect_to volunteer_path(@volunteer)
    else
       p @volunteer.errors.full_messages
      redirect_to '/home/sign_up'
    end
  end

  def destroy
    session.clear

    redirect_to '/'
  end

  def edit
  end

  def show
    @volunteer = Volunteer.find(params[:id])
  end

  private

  def volunteer_params
    params.require(:volunteer).permit(:name, :address, :email, :password, :phone )
  end

end
