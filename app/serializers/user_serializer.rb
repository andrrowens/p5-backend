class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :username, :city, :state, :zipcode, :friends

  has_many :sent_friendships_requests
  has_many :received_friendships_requests

  has_many :listings 

  
end
