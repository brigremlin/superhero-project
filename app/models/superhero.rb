class Superhero < ApplicationRecord
    belongs_to :user
    has_many :superhero_categories
    has_many :categories, through: :superhero_categories
    validates :name, presence: true,
                uniqueness: { case_sensitive: false }, 
                length: { minimum: 3, maximum: 30 }
    validates :full_name, presence: true,
                uniqueness: { case_sensitive: false }, 
                length: { minimum: 3, maximum: 30 }
    validates :place_of_birth, presence: true
    validates :gender, presence: true, length: { minimum: 1, maximum: 6 }
    validates :height, presence: true, length: { minimum: 1, maximum: 5 }
    validates :weight, presence: true, length: { minimum: 1, maximum: 8 }
    validates :intelligence, presence: true, length: { minimum: 1, maximum: 3 }
    validates :strength, presence: true, length: { minimum: 1, maximum: 3 }
    validates :speed, presence: true, length: { minimum: 1, maximum: 3 }
    validates :power, presence: true, length: { minimum: 1, maximum: 3 }
    
end
