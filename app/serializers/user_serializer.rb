class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :username, :city, :state, :zipcode 

  
end
