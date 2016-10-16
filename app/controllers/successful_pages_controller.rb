class SuccessfulPagesController < ApplicationController
  def index
  	@order = current_order
    session.delete(:order_id)
  end
end
