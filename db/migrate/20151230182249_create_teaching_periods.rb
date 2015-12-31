class CreateTeachingPeriods < ActiveRecord::Migration
  def change
    create_table :teaching_periods do |t|
      t.integer :trainer_id
      t.integer :student_id
      t.datetime :starts_at, :null => false, :default => Time.now
      t.datetime :ends_at, :null => false, :default => Time.now
      t.integer :status
      t.string :entity_type
      t.timestamps null: false
    end
  end
end
