class UsersController < ApplicationController
    before_action :authenticate_user!
    expose(:user)
    expose(:reviews) { current_user.reviews }
    
    def show
        
    end
    
    def edit
        current_user.update!(user_params)
        redirect_to user_profile_path
    end
    
    private
      def user_params
        params.require(:user).permit(:avatar, @original_filename, @content_type)
      end
end