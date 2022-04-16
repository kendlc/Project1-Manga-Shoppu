class OrdersController < ApplicationController


    def index
        @orders = @current_user.orders
    end

    def create
       @cart = @current_user
       @order = @cart.orders.new(order_params)
       @cart.save
    end

    def update
        @cart = @current_user
        @order = @cart.orders.find params[:id]
        @order.update order_params
        redirect_to user_path
    end

    private
    
    def order_params
        params.require(:order).permit(:volume_id, :quantity)
    end
end 