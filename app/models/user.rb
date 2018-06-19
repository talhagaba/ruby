class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
# devise :database_authenticatable, :registerable,
 #        :recoverable, :rememberable, :trackable, 
  #       :validatable, authentication_keys: [:login]

 devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


def user_params
  params.require(:user).permit(:name, :email, :password, :password_confirmation)
end
         has_many :products


end
