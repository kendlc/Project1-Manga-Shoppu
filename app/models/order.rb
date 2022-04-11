class Order < ApplicationRecord
    has_many :volumes
    belongs_to :user, :optional => true
    has_many :mangas, :through => :volumes
end
