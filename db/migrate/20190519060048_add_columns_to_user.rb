class AddColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :phone, :string
    add_column :users, :salt, :string
    add_column :users, :encrypted_password, :string
  end
end
