class ApplicationController < ActionController::Base
	  protect_from_forgery with: :exception
#protect_from_forgery prepend: true
 # before_action :authenticate_user!

#def user_params
 # params.require(:user).permit(:name, :email, :password, :password_confirmation)
#end


end
