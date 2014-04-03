class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
      		redirect_to dashboard_path
      		flash[:success] = "Congrats! You have just created your account."
    	else
      		render :new
    	end
	end


private
	
	def user_params
		params.require(:user).permit(:name, :email, :password_digest, :admin)
	end



end
