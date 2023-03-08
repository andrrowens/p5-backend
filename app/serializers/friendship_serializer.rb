class FriendshipSerializer < ActiveModel::Serializer
  attributes :id, :sender_id, :receiver_id, :status

  # has_one: sender 
  # has_one: receiver 


  def sorted_friendships 
    friendships = Friendship.all 
    render json: friendships.order("status DESC")
  end 
end
