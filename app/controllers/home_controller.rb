class HomeController < ApplicationController
	def index
	end

	
	def show

	end

	def sign_up

	end


	def create 
	  	@volunteer = Volunteer.find_by(email: params[:email])
	  	@ministry = Ministry.find_by(email: params[:email])

	  	if @volunteer && @volunteer.authenticate(params[:password])
	  		session[:volunteer_id] = @volunteer.id
	  		redirect_to '/volunteers/'
	  	elsif @ministry && @ministry.authenticate(params[:password])
	  		session[:ministry_id] = @ministry.id
	  		redirect_to '/ministries/'
	  	else
	  		flash[:alert] = "Login Failed"
			redirect_to '/home/login'
		end
	end 



end
