class CreateMissionAssignments < ActiveRecord::Migration
  def change
    create_table :mission_assignments do |t|
      t.integer :mission_id
      t.integer :ministry_id

      t.timestamps null: false
    end
  end
end
