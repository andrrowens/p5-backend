class UsersController < ApplicationController
    skip_before_action :authenticated_user, only: [:create]


    def index 
        users = User.all 
        render json: users, status: :ok
    end

    def show 
        # user = User.find(params[:id])
        render json: @user, status: :ok
        # debugger
    end

    # def show
    #     userlisting = @user.listings
    #     render json: userlisting, status: :ok
    # end

    def update 
        user = @user 
        user.update!(user_params)
        render json: user, status: :accepted
    end

    def create
        user = User.create!(user_params)
        session[:user_id] = user.id
        render json: user, status: :created   
    end

    private 

    def user_params
        params.permit(:email, :username, :city, :state, :zipcode)
    end

end
