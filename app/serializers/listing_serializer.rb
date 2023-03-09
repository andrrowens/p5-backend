class ListingSerializer < ActiveModel::Serializer
  attributes :id, :title, :plant_name, :description, :city, :state, :zipcode, :image, :plant_id, :user_id


  belongs_to :user

end
