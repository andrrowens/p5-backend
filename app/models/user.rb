class User < ApplicationRecord
    has_secure_password 

    has_many :listings, dependent: :destroy 
    has_many :plants, through: :listings


    has_many :friend_requests_as_sender, foreign_key: :sender_id, class_name: :FriendRequest
    has_many :friend_requests_as_receiver, foreign_key: :receiver_id, class_name: :FriendRequest 

    #custom relation query
    has_many :friendships, ->(user) { where("friend_a_id = ? OR friend_b_id = ?", user.id, user.id) }
    # has_many :friendships, -> { where("friend_a_id = ? OR friend_b_id = ?", user.id, user.id) }, class_name: "User"
    has_many :friends, through: :friendships

end
