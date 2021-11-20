class Artist < ApplicationRecord
    validates :name, :permalink, :bio, :avatar_url, :cover_photo_url, presence:true
end