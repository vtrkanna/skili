class CreateTrainers < ActiveRecord::Migration
  def change
    create_table :trainers do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :gender
      t.string :title
      t.integer :user_id
      t.integer :created_by
      t.integer :updated_by
      t.string :address
      t.integer :country_id
      t.integer :city_id
      t.string :string

      t.timestamps null: false
    end
  end
end
