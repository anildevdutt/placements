class CreateAdmins < ActiveRecord::Migration[5.0]
  def change
    create_table :admins do |t|
      t.string :uname
      t.string :password_digest

      t.timestamps
    end
    add_index :admins, :uname, unique: true
  end
end
