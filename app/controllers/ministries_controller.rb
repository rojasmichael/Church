class MinistriesController < ApplicationController
  def new
     @ministry = Ministry.new
  end

  def create
        @ministry = Ministry.new(ministry_params)

    if @ministry.save
      redirect_to ministry_path(@ministry)
    else
      render :new
    end
  end
  

  def destroy

  end

  def edit
  end

  def show
    @ministry = Ministry.find(params[:id])
  end

def ministry_params
    params.require(:ministry).permit(:name, :address, :phone, :email, :password)
  end
end
