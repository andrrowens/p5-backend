class Plant < ApplicationRecord
    has_many :listings, dependent: :destroy
    has_many :users, through: :listings
end
