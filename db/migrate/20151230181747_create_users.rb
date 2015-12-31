class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :entity_type, null: false, default: "Student"
      t.boolean :active, default: false
      t.integer :student_id
      t.integer :trainer_id
      t.integer :created_by
      t.integer :updated_by
      t.integer :role_id
      t.timestamps null: false
    end
    add_index :users, :full_name
  end
end
