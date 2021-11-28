class Artist < ApplicationRecord
    validates :name, :bio, :formed_at, :verified_at, :avatar_url, :cover_photo_url, presence:true
    validates :permalink, uniqueness: true, presence: true
    validates :bio, length: { maximum: 150 }
    validates :name, uniqueness: true
end

# format: { with: /A[a-zd][a-zd-]*[a-zd]z/i, message: "should not contain special characters" }