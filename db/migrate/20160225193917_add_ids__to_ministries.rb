class AddIdsToMinistries < ActiveRecord::Migration
  def change
    add_column :ministries, :volunteer_id, :integer
    add_column :ministries, :mission_id, :integer
    add_column :ministries, :mission_assignment_id, :integer
  end
end
