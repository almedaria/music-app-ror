class Artist < ApplicationRecord
    validates :permalink, :bio, :avatar_url, :cover_photo_url, presence:true
end