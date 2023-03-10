class FriendshipsController < ApplicationController

    def index
        friendships = @user.sent_friendships_requests + @user.received_friendships_requests 
        render json: friendships, status: :ok
    end

    def create
        params[:sender_id] = session[:user_id]
        render json: Friendship.create!(friendship_params), status: 201
    end

    def update
        friend = Friendship.find(params[:id])
        if friend.receiver == @user || friend.sender == @user
            friend.update!(status: "accepted")
        end
        render json: @user, status: 202 
    end


    def destroy
        friend = Friendship.find(params[:id])
        if friend.receiver == @user || friend.sender == @user
            friend.update!(status: "rejected")
        end
        render json: @user, status: 202
    end

    def remove 
        friendships = Friendship.where(sender: @user, receiver_id:params[:friend_id]).or(Friendship.where(receiver: @user, sender_id: params[:friend_id]))
        friendships.delete_all
        render json: @user, status: 200
    end


    private

    def friendship_params
        params.permit(:sender_id, :receiver_id)
    end

end