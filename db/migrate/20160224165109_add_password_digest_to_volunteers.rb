class AddPasswordDigestToVolunteers < ActiveRecord::Migration
  def change
    add_column :volunteers, :password_digest, :string
    add_column :ministries, :password_digest, :string
  end
end
