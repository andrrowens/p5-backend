class FriendshipsController < ApplicationController

    def index
        friendships = Friendship.all 
        render json: friendships, status: :ok
    end

    def create
        render json: Friendship.create!(friendship_params), status: 201
    end


    def destroy
        friend = Friendship.find(params[:id])
        if friend.receiver == @user || friend.sender == @user
            friend.update(status: "rejected")
        end
        render json: friend, status: 202
    end


    private

    def friendship_params
        params.permit(:sender_id, :receiver_id)
    end

end
