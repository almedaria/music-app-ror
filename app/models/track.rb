class Track < ApplicationRecord
    validates :url, :name, uniqueness: true, presence: true
    validates :credits, presence:true
end