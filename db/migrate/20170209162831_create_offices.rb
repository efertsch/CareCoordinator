class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :phone_number, null: false
      t.string :email, null: false

      t.timestamps null: false
    end
  end
end
