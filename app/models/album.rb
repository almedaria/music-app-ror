class Album < ApplicationRecord
    validates :name, :released_at, :cover_art_url, :length, :kind, presence:true
end