class CreateDoctorsOffices < ActiveRecord::Migration
  def change
     create_table :doctors_offices do |t|
      t.references :doctor, null: false
      t.references :office, null: false

      t.timestamps null: false
    end
  end
end
