class Manga < ApplicationRecord
    belongs_to :author, :optional => true
    has_and_belongs_to_many :genres
    has_many :volumes
end
