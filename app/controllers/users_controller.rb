class UsersController < ApplicationController
    # skip_before_action :authenticated_user, only: [:create]


    def show 
        # user = User.find(params[:id])
        render json: @user, status: :ok
    end

    def create
        user = User.create!(user_params)
        session[:user_id] = user.id
        render json: user, status: :created   
    end

    private 

    def user_params
        params.permit(:email, :username, :password)
    end

end
