class CreateOrderItems < ActiveRecord::Migration[5.0]
  def change
    create_table :order_items do |t|
      t.string :food_item
      t.string :references
      t.references :order, foreign_key: true
      t.integer :unit_price
      t.integer :quantity
      t.integer :total_price

      t.timestamps
    end
  end
end
