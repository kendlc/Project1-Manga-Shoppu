class CartsController < ApplicationController
  def show
    @orders = current_order.orders
  end

  def index
    @orders = current_order.orders
  end
end
