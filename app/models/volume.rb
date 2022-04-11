class Volume < ApplicationRecord
    belongs_to :manga, :optional => true
    belongs_to :order, :optional => true
    has_many :genres, :through => :manga
end
 