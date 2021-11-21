class Artist < ApplicationRecord
    validates :name, :permalink, :bio, :formed_at, :verified_at, :avatar_url, :cover_photo_url, presence:true
end