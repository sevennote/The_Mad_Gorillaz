class SessionsController < ApplicationController
  def login
  	@user = User.new
  end

  def logout
  end
end


# changed signup to logout