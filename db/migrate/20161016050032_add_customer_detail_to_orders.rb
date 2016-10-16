class AddCustomerDetailToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :customer_name, :string
    add_column :orders, :customer_phone_number, :string
    add_column :orders, :customer_address, :string
    add_column :orders, :customer_email, :string
  end
end
