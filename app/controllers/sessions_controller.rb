class SessionsController < ApplicationController
 def create
	#raise env["omniauth.auth"].to_yaml
	user = User.from_omniauth(env["omniauth.auth"])
	session[:user_id] = user.id
	redirect_to root_url, notice: "signed in!"
 end
 
  def destroy
	session[:user_id] = nil
	redirect_to root_url, notice: "signed out!"
 end
end
