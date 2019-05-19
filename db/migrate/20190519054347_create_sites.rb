class CreateSites < ActiveRecord::Migration[5.2]
  def change
    create_table :sites do |t|
      t.string :name
      t.integer :user_id
      t.text :short_desc
      t.text :desc
      t.string :state

      t.timestamps
    end
  end
end
