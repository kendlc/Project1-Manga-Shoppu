class Manga < ApplicationRecord
    has_and_belongs_to_many :genres
    has_many :volumes
end
