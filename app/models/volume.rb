class Volume < ApplicationRecord
    belongs_to :manga, :optional => true
    has_many :orders
end
 