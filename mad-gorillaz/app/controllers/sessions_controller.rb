class SessionsController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	user = User.find_by(username: user_params[:username])
    byebug
  	if user && user.authenticate(user_params[:password])
  		session[:user_id] = user.id
  		redirect_to root_path
  	end
    redirect_to login_path
  end

  def destroy
    sessions[:user_id] = nil
    redirect_to root_path
  end
 

  private

	def user_params
	  params.require(:user).permit(:username, :password)
	end
end


# changed signup to logout