class FoodItemsController < ApplicationController
  def index
  	@order_str = "created_at"
  	if params[:sort_by]
      @sort_by = params[:sort_by]
      @sort_order = "ASC"
      if params[:sort_order]
        @sort_order = params[:sort_order]
      end
      @order_str = "#{@sort_by} #{@sort_order}"
    end

  	if params[:type]
  		@section = Section.where(name: params[:type].titlecase).first
  		@food_items = FoodItem.where(section: @section).order(@order_str)
  	else
  		@food_items = FoodItem.all.order(@order_str)
  	end
  end

  def show
  end
end
