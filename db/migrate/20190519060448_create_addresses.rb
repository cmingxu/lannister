class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :name
      t.string :province
      t.string :city
      t.string :region
      t.string :phone
      t.boolean :default

      t.timestamps
    end
  end
end
