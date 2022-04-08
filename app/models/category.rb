class Category < ApplicationRecord
    has_many :superhero_categories
    has_many :superheroes, through: :superhero_categories
    validates :name, presence: true, length: { minimum: 3, maximum: 25 }
    validates_uniqueness_of :name
end