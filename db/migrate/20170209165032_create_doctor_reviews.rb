class CreateDoctorReviews < ActiveRecord::Migration
  def change
    create_table :doctor_reviews do |t|
      t.string :title, null: false
      t.string :body, null: false
      t.integer :rating, null: false
      t.references :doctor, null: false
      t.references :patient, null: false

      t.timestamps null: false
    end
  end
end
