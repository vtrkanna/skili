class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :phone
      t.string :title
      t.string :address
      t.integer :user_id
      t.integer :country_id
      t.integer :city_id
      t.string :pincode
      t.integer :created_by
      t.integer :updated_by
      t.timestamps null: false
    end
  end
end
