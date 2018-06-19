class ApplicationController < ActionController::Base
	  protect_from_forgery with: :exception
#protect_from_forgery prepend: true
 # before_action :authenticate_user!

#def user_params
 # params.require(:user).permit(:name, :email, :password, :password_confirmation)
#end
protected

  def after_sign_up_path_for(@user)
    '/users/login' # Or :prefix_to_your_route
  end


private

  # Overwriting the sign_out redirect path method
  def after_sign_out_path_for(@user)
    '/users/login'
  end

end
