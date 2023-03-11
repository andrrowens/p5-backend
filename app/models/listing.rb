class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :plant

  validates :title, :plant_name, :description, :city, :state, :zipcode, :image, :plant_id, presence: true 
end
