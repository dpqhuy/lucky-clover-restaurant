class RemoveRedundantFromOrderItems < ActiveRecord::Migration[5.0]
  def change
    remove_column :order_items, :references, :string
    remove_column :order_items, :food_item, :string
  end
end
