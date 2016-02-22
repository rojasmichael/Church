class CreateMinistries < ActiveRecord::Migration
  def change
    create_table :ministries do |t|
      t.string :name
      t.text :description
      t.string :address
      t.string :phone
      t.string :picture

      t.timestamps null: false
    end
  end
end
