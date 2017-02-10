class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.date :date_of_birth, null: false
      t.string :gender_identity, null: false
      t.string :phone_number, null: false
      t.string :email, null: false
      t.string :password_hash, null: false


      t.timestamps null: false
    end
  end
end
