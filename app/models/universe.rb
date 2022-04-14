class Universe < ApplicationRecord
    has_many :superhero_universes
    has_many :superheroes, through: :superhero_universes
end