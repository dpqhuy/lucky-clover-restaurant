class CartsController < ApplicationController
  def show
  	@order = current_order
  	if @order.nil?
  		@order = Order.new
  	end
  	@order_items = @order.order_items
  end
end
