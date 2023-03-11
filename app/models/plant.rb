class Plant < ApplicationRecord
    has_many :listings, dependent: :destroy
    has_many :users, through: :listings


    validates :name, :watering, :sunlight, :environment, :notes, :image, presence: true 
end
