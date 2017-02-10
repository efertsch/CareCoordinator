class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.string :password_hash, null: false
      t.integer :years_practicing, null: false

      t.timestamps null: false
    end
  end
end
