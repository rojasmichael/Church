class AddColumnToMissions < ActiveRecord::Migration
  def change
    add_column :missions, :name, :string
    add_column :missions, :location, :string
    add_column :missions, :description, :text
  end
end
