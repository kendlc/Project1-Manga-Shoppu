class OrdersController < ApplicationController

    def create
       @cart = current_order
       @order = @cart.orders.new(order_params)
       @cart.save
       session[:cart_id] = @cart.id
    end

    def update
        @cart = current_order
        @order = @cart.orders.find params[:id]
        @order.update order_params
        redirect_to cart_path
    end

    private
    
    def order_params
        params.require(:order).permit(:volume_id, :quantity)
    end
end 