class ApplicationController < ActionController::API

    class ApplicationController < ActionController::Base
        # skip_forgery_protection
        # include ActionController::Cookies
        rescue_from ActiveRecord::RecordNotFound, with: :not_found
        rescue_from ActiveRecord::RecordInvalid, with: :not_valid
    
        # before_action :authenticated_user
    
        # def current_user
        #     @user ||= User.find_by(id:session[:user_id])
        # end
        
        # def authenticated_user
        #     puts "test"
        #     render json: {errors: "Not Authorized"}, status: :unauthorized unless current_user
        # end
    
    
        private
    
        def not_found(exception)
            render json: {error: "#{exception.model} not found"}, status: :not_found
        end
        
        def not_valid(invalid)
            render json: {error: invalid.record.errors.full_messages}, status: :unprocessable_entity
        end
    
    end
    
end
