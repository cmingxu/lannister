class CreateSites < ActiveRecord::Migration[5.2]
  def change
    create_table :sites do |t|
      t.string :name
      t.string :contact_mobile
      t.string :contact_name
      t.string :contact_address
      t.integer :user_id
      t.string :state

      t.timestamps
    end
  end
end
