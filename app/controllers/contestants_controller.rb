class ContestantsController < ApplicationController
	def new 
		@contestant = Contestant.new 
	end 
	def create 
		@contestant = Contestant.new(contestant_params)
		if @contestant.save
			ContestantMailer.participation(@contestant).deliver_later
			flash[:notice] = t("Success notice")
			sleep(3)
			redirect_to new_contestant_path
		else
			render 'new'
		end 			
	end 
	# def check_email
 #    	if Contestant.where(params[:email]).exists?
 #      		render json: {message: "ERROR"}
 #    	else
 #      		render json: {message: "SUCCESS"}
 #    	end
 #  	end
	private 
	def contestant_params 
		params.require(:contestant).permit(:nombre, :apellido, :email, :estanco, :foto)
	end
end
