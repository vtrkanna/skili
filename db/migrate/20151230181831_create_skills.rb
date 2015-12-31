class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name, null: false
      t.string :title
      t.text :description
      t.boolean :active, default: false
      t.integer :tag_id
      t.integer :created_by
      t.integer :updated_by
      t.timestamps null: false
    end
    add_index :skills, :name, unique: true
  end
end
