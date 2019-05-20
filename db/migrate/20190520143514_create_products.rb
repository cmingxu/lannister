class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :user_id
      t.text :desc
      t.text :short_desc
      t.string :state
      t.decimal :price
      t.decimal :discount_price
      t.integer :quantity
      t.integer :quantity_remain

      t.timestamps
    end
  end
end
