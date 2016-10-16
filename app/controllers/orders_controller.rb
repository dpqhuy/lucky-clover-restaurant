class OrdersController < ApplicationController
  def update
  	@order = current_order
  	if @order.update_attributes(order_params)
  		redirect_to successful_pages_path
  	end

  end

 private
  def order_params
  	params.require(:order).permit(:customer_name, :customer_phone_number, :customer_address, :customer_email)
  end
end
