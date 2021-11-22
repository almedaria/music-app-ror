class Album < ApplicationRecord
    validates :name, :released_at, :length, :kind, presence:true
    has_one_attached :image
end