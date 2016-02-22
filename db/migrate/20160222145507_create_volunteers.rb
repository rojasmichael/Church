class CreateVolunteers < ActiveRecord::Migration
  def change
    create_table :volunteers do |t|
      t.string :name
      t.text :description
      t.string :address
      t.string :picture

      t.timestamps null: false
    end
  end
end
