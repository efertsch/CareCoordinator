class CreateSpecialties < ActiveRecord::Migration
  def change
    create_table :specialties do |t|
      t.string :title, null: false
      t.string :description, null: false

      t.timestamps null: false
    end
  end
end
