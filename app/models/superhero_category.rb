class SuperheroCategory < ApplicationRecord
    belongs_to :superhero
    belongs_to :category
end