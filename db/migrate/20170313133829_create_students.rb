class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :pin
      t.string :email
      t.string :phno
      t.text :address
      t.decimal :cgpa
      t.integer :abacklog
      t.boolean :placed
      t.string :password_digest

      t.timestamps
    end
    add_index :students, :pin, unique: true
    add_index :students, :email, unique: true
  end
end
