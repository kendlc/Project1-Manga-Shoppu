class Cart < ApplicationRecord
    belongs_to :user
    has_many :orders

    def subtotal
        orders.collect{|order| order.valid? ? order.unit_price*order.quantity : 0}.sum
    end

    private

    def set_subtotal 
        self[:subtotal] = subtotal
    end

end
