class CreateDoctorsSpecialties < ActiveRecord::Migration
  def change
    create_table :doctors_specialties do |t|
      t.references :doctor, null: false
      t.references :specialty, null: false

      t.timestamps null: false
    end
  end
end
