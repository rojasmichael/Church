class AddColumnToMissionAssignments < ActiveRecord::Migration
  def change
    add_column :mission_assignments, :volunteer_id, :integer
  end
end
