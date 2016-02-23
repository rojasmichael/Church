class MinistriesController < ApplicationController
  def new
  end

  def create
    @ministry = Ministry.find params[:ministry_id]
    

    if @ministry.save
        redirect_to action: 'index', controller:
        'entries', project_id: @project_id

    else
        render 'new'

    end
  end

  def destroy
  end

  def edit
  end

  def show
  end
end
