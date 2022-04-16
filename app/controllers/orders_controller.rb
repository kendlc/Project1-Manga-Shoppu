class OrdersController < ApplicationController
    skip_before_action :verify_authenticity_token

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
        redirect_to orders_path
    end

    def destroy
        @cart = @current_user
        @order = @cart.orders.find params[:id]
        @order.destroy
        redirect_to orders_path
    end

    private
    
    def order_params
        params.require(:order).permit(:volume_id, :quantity)
    end
    
end 