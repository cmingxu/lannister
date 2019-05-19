class CreateSiteAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :site_admins do |t|
      t.string :identity
      t.string :encrypted_password

      t.timestamps
    end
  end
end
