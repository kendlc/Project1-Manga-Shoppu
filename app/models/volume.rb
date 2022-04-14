class Volume < ApplicationRecord
    belongs_to :manga, :optional => true
    has_many :orders
    has_many :genres, :through => :manga
end
 