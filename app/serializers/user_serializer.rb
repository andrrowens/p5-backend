class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :username, :city, :state, :zipcode, :accepted_friends, :pending_friends, :rejected_friends, :pending_received_friendship_requests, :accepted_received_friendship_requests 

  has_many :sent_friendships_requests
  has_many :received_friendships_requests
  has_many :created_plants 

  has_many :listings 

  def pending_received_friendship_requests 
    self.object.received_friendships_requests.pending 
  end

  def accepted_received_friendship_requests 
    self.object.received_friendships_requests.accepted 
  end

  
end
