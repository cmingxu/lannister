class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.string :product_id
      t.integer :quantity
      t.float :total_price
      t.integer :address_id

      t.timestamps
    end
  end
end
