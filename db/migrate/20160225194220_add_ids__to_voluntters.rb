class AddIdsToVoluntters < ActiveRecord::Migration
  def change
    add_column :volunteers, :ministry_id, :integer
    add_column :volunteers, :mission_id, :integer
    add_column :volunteers, :mission_assignment_id, :integer
  end
end
