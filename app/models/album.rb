class Album < ApplicationRecord
    validates :name, uniqueness: true, presence: true
    validates :length, numericality: {greater_than: 1}, presence: true
    validates :released_at, :kind, presence:true
    has_one_attached :image
    
end