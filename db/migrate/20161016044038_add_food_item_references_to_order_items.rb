class AddFoodItemReferencesToOrderItems < ActiveRecord::Migration[5.0]
  def change
    add_reference :order_items, :food_item, foreign_key: true
  end
end
