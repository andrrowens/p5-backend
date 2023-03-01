class User < ApplicationRecord
    has_secure_password 

    has_many :listings, dependent: :destroy 
    has_many :plants, through: :listings


    
    has_many :sent_friendships_requests, class_name: "Friendship", foreign_key: :sender_id, dependent: :destroy
       
    
    has_many :received_friendships_requests, class_name: "Friendship", foreign_key: :receiver_id, dependent: :destroy
       

    def friends
        friendships = Friendship.where(sender: self, status: "accepted").or(Friendship.where(receiver: self, status: "accepted"))
        friendships.map{|f| f.sender === self ? f.recipient : f.sender}
    end

end
