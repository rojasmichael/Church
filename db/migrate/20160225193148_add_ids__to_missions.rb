class AddIdsToMissions < ActiveRecord::Migration
  def change
    
    add_column :missions, :ministry_id, :integer
    add_column :missions, :mission_assignment_id, :integer
  end
end
