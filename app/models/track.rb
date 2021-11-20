class Track < ApplicationRecord
    validates :url, :name, :credits, presence:true
end