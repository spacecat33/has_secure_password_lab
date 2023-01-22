class WelcomeController < ApplicationController
    def hello
        redirect_to new_session_path unless current_user
        @user = User.find(current_user)
      end
end