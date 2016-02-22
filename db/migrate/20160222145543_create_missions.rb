class CreateMissions < ActiveRecord::Migration
  def change
    create_table :missions do |t|
      t.integer :church_id
      t.integer :volunteer_id

      t.timestamps null: false
    end
  end
end
