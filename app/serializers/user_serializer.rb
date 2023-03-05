class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :username, :city, :state, :zipcode, :accepted_friends, :pending_friends, :rejected_friends

  has_many :sent_friendships_requests
  has_many :received_friendships_requests

  has_many :listings 

  
end
