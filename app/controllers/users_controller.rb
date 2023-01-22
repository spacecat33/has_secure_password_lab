class UsersController < ApplicationController
    
    def create
        if !User.new(user_params).valid?
            redirect_to new_user_path
        else
            user = User.create(user_params)
            session[:user_id] = user.id
            redirect_to root_path
        end
      end
    
    def new
        @user = User.new
    end

      private
    
      def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
      end
end