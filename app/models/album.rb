class Album < ApplicationRecord
    validates :name, :cover_art_url, :length, :kind, presence:true
end