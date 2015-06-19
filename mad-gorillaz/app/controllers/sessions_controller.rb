class SessionsController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	user = User.find_by(username: user_params[:username])
  	if user.authenticate(params[:user][:password])
  		session[:user_id] = user.id
  		redirect_to root
  	end
  end

  def destroy
    sessions[:user_id] = nil
  end


  private

	def user_params
	  params.require(:user).permit(:username, :password)
	end
end


# changed signup to logout