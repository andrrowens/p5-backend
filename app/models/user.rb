class User < ApplicationRecord
    has_secure_password 

    has_many :listings, dependent: :destroy 
    has_many :plants, through: :listings
end
